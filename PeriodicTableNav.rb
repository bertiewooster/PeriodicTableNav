require 'sinatra' #meaningless comment
require 'sinatra/activerecord'
require 'active_record'
require './environments'

=begin
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/elements')

db = URI.parse('postgres://jemonat@localhost/elements')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)
=end

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

class Element < ActiveRecord::Base
end

class Base < ActiveRecord::Base
end

class Orb < ActiveRecord::Base
end

class Orbital < ActiveRecord::Base
end

get "/index" do
	load_elements(params[:name])
	@element = Element.find(2)
	@elements = Element.order("atomic_num ASC")
	erb :index
end

get "/" do
	load_elements(params[:name])
	@title = 'All Elements'
	erb :home
end

get '/element/:atomic_num' do |atomic_num| # load element page
	load_elements(params[:name])
	atomic_num = atomic_num.to_i
	@origin = Element.find(atomic_num)
	@title = "Element ##{atomic_num}"
	erb :element
end

get '/period/:period' do |period| # load period page
	load_elements(params[:name])
	period = period.to_i
	@period = period
	redirect('/') if @period > @max_period	# redirect to home page if user tries to compose a URL to a non-existent period
	@title = "Period ##{period}"
	erb :period
end

get '/group/:group' do |traditional_group|  # load group page
	load_elements(params[:name])
	@traditional_group = traditional_group
	@linear_group = group_trad_to_lin(traditional_group)["num"]
	if (@linear_group > @max_group) or (@linear_group <= 0)
		redirect('/') 	# redirect to home page if user tries to compose a URL to a non-existent group
	end
	@group_elements = Element.where(:grouplin => @linear_group).order(period: :asc)
	@title = "Group ##{traditional_group}"
	erb :group
end
get '/test/:name' do
	@elementAR = Element.find(2)
	erb :'inactive/test'
end

helpers do

	def init_constants
		# Using linear group numbering of 1-32 (f-block columns numbered as groups):
		@main_pauses_group = 2 # where main part of periodic table (non-f block) leaves off
		@main_resumes_group = 17 # where main part of periodic table (non-f block) picks back up
		#HTML codes for special characters
		@star = "&#9733;" # 5-pointed star, ★
		@space = "&nbsp;" # non-breaking space, used as a spacer
		@left_arrow = "<" # "&#8656;" # left double arrow, ⇐
		@left_jump_arrow = "<<" # "&#8666;" # left triple arrow, ⇚
		@right_arrow = ">" # "&#8658;" # right double arrow, ⇒
		@right_jump_arrow = ">>" # "&#8667;" # right triple arrow, ⇛
		@up_arrow = "^" # "&#923;" # "&#8657;" # up double arrow, ⇑
		@down_arrow = "V" # "&#8659;" # down double arrow, ⇓
	end
	
	def group_lin_to_trad(linear_group)
		init_constants
		
		case linear_group
		when 1..@main_pauses_group #linear groups 1-2 = traditional groups 1-2
			trad_group_num = linear_group
			trad_group_type = "main"
		when (@main_pauses_group+1)..(@main_resumes_group-1) #linear groups 3-16 = f groups 1-14
			trad_group_num = linear_group - 2 # e.g. linear group 3 is f group 1
			trad_group_type = "f"
		when @main_resumes_group..@max_group #linear groups 17-32 = traditional groups 3-18
			trad_group_num = linear_group - @num_f_groups # e.g. linear group 17 is traditional group 3
			trad_group_type = "main"
		else #error
			trad_group_num = -1
			trad_group_type = "error"
		end
		
		@result = Hash["num" => trad_group_num, "type" => trad_group_type]
	end

	def group_trad_to_lin(traditional_group)
		init_constants

		if traditional_group.to_s[0].match(/^[[:alpha:]]$/) && (traditional_group.to_s[1].match(/^[[:digit:]]$/)) 
		#if group starts with a letter and second character is a number, e.g. f5
			#if is an f group, e.g. f12 (starts with a letter)
			if (traditional_group.to_s[0].match(/^[[f]]$/))
				lin_group_type = traditional_group[0] # f
				lin_group_num = traditional_group[1..traditional_group.length-1].to_i + @main_pauses_group
				if (lin_group_num > @num_f_groups + @main_pauses_group) || (lin_group_num <= @main_pauses_group)
				#if the linear group number is outside the bounds (3-16) for an f group (corresponding to f1-f14)
					lin_group_num = -1
					lin_group_type = "error"
				end
			else
				lin_group_num = -3 # error: group starts with a letter other than f
				lin_group_type = "error"
			end
		else
			traditional_group = traditional_group.to_i
			case traditional_group
			when 1..@main_pauses_group #traditional groups 1-2 = linear groups 1-2
				lin_group_num = traditional_group
				lin_group_type = "main"
			when (@main_pauses_group+1)..(@max_group-@num_f_groups) #traditional groups 3-18 = linear groups 17-32
				lin_group_num = traditional_group + @num_f_groups # e.g. traditional group 3 is linear group 17
				lin_group_type = "main"
			else #error
				lin_group_num = -2
				lin_group_type = "error"
			end
		end
		
		@result = Hash["num" => lin_group_num, "type" => lin_group_type]
	end

  def load_elements(name)
	init_constants
	@elements = Element.order("atomic_num ASC")
	@max_period			= Element.last(1)[0].period
	@max_group = Element.order(grouplin: :desc)[0].grouplin
	@ebyp = Array.new(@max_period) # array to hold elements
	@ebyp.each_index do |period| # build a 2D array: by period, then by element
		@ebyp[period] = @elements.select{|element| element.period == period+1}
	end
	@bases				= Base.all
	
	#Build array of groups in main groups (non-f block)

	ongroup = 1
	@main_groups = Array.new
	while ongroup <= @main_pauses_group do
		@main_groups << ongroup
		ongroup += 1
	end

	ongroup = @main_resumes_group
	while ongroup <= @max_group do
		@main_groups << ongroup
		ongroup += 1
	end
	
	#Build array of f groups
	@f_groups = Array ((@main_pauses_group + 1) .. (@main_resumes_group -1))
	@num_f_groups = @f_groups.size #14 # number of f groups

  end
  
  def load_orbitals(name)
	@orbitals			= Orbital.order("id ASC")
	#Build hash of orbitals (e.g. id 11 = 5p)
	@orbital_hash = Hash.new
	orbital_id = 1
	@orbitals.each do |orbital|
		@orbital_hash[orbital_id] = Hash.new
		@orbital_hash[orbital_id]["n"] = orbital.n
		@orbital_hash[orbital_id]["l"] = orbital.l
		orbital_id += 1
	end
  end

end # helpers

before do
	load_orbitals("")
end