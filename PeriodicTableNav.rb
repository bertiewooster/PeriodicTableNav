require 'rubygems'  
require 'sinatra'  
require 'data_mapper'

# Serve static files from public
#set :public, "../public"

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/Elements.sqlite")  
DataMapper::Property::Boolean.allow_nil(false)

class Element # Describes how to map from database 
	include DataMapper::Resource  
	property :atomic_num, Serial, :key => true
	property :symbol, Text
	property :name, Text
	property :name_origin, Text
	property :group, Integer
	property :period, Integer
	property :atomic_weight, Float
	property :atomic_wt_is_mass_number_of_longest_lived_isotope, Integer # should be Boolean
	property :specific_heat_capacity_j_per_gk, Float
	property :density_g_per_cm3, Float
	property :density_is_estimated, Integer # should be Boolean
	property :melting_point_k, Float
	property :melt_is_estimated, Integer # should be Boolean
	property :boiling_point_k, Float
	property :boil_is_estimated, Integer # should be Boolean
	property :electronegativity, Float
	property :abundance_mg_per_kg, Float
	property :abundance_is_upper_limit, Integer # should be Boolean
	property :e_config_valence, Text
end

class Base
	include DataMapper::Resource
	property :id, Serial, :key => true
	property :base, Text
end

class Orb
	include DataMapper::Resource
	property :element_id, Integer, :key => true
	property :orbital_id, Integer, :key => true
	property :count, Integer
end

class Orbital
	include DataMapper::Resource
	property :id, Integer, :key => true
	property :n, Integer
	property :l, Text
end

DataMapper.finalize.auto_upgrade!

helpers do

	def init_constants
		# Using linear group numbering of 1-32 (f-block columns numbered as groups):
		@main_pauses_group = 2 # where main part of periodic table (non-f block) leaves off
		@main_resumes_group = 17 # where main part of periodic table (non-f block) picks back up
		@f_groups = 14 # number of f groups
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
			trad_group_num = linear_group - @f_groups # e.g. linear group 17 is traditional group 3
			trad_group_type = "main"
		else #error
			trad_group_num = -1
			trad_group_type = "error"
		end
		
		@result = Hash["num" => trad_group_num, "type" => trad_group_type]
	end

	def group_trad_to_lin(traditional_group)
		init_constants
		
		if traditional_group.is_a?(String) #if is an f group, e.g. f12
			lin_group_type = traditional_group[0] # f
			lin_group_num = traditional_group[1..traditional_group.length-1].to_i + @main_pauses_group
			if lin_group_num > @f_groups
				lin_group_num = -1
			end
		else
			case traditional_group
			when 1..@main_pauses_group #traditional groups 1-2 = linear groups 1-2
				lin_group_num = traditional_group
				lin_group_type = "main"
			when (@main_pauses_group+1)..(@max_group-@f_groups) #traditional groups 3-18 = linear groups 17-32
				lin_group_num = traditional_group + @f_groups # e.g. traditional group 3 is linear group 17
				lin_group_type = "main"
			else #error
				lin_group_num = -1
				lin_group_type = "error"
			end
		end
		
		@result = Hash["num" => lin_group_num, "type" => lin_group_type]
	end

  def load_elements(name)
	init_constants
	@elements			= Element.all :order => :atomic_num.asc
	@max_period			= Element.last.period
	@max_group = Element.all(:order => [ :group.desc ], :limit => 1)[0].group
	@ebyp = Array.new(@max_period) # array to hold elements
	@ebyp.each_index do |period| # build a 2D array: by period, then by element
		@ebyp[period] = @elements.select{|element| element.period == period+1}
	end
	@bases				= Base.all
	
	#Build array of elements in main groups (non-f block)

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
	
	@f_groups = Array ((@main_pauses_group + 1) .. (@main_resumes_group -1))
	
	#@main_groups = 1..@main_pauses_group + @main_resumes_group..@max_group
  end
end

get '/test/:name' do
	load_elements(params[:name])
	erb :test
end

get '/eo' do # load elements_orbitals test page
	@eo = Orb.all
	@e = Element.all
	erb :eo
end

get '/' do  # load home page
	load_elements(params[:name])
	@title = 'All Elements'
	erb :home 
end

get '/element/:atomic_num' do | atomic_num | # load element page
	load_elements(params[:name])
	atomic_num = atomic_num.to_i
	@origin = Element.get(atomic_num)
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

get '/group/:traditional_group' do |traditional_group|  # load group page
	load_elements(params[:name])
	#group = group.to_i
	@traditional_group = traditional_group
	group_entity = group_trad_to_lin(traditional_group)
	@linear_group = group_entity["num"]
	redirect('/') if @group > @max_group	# redirect to home page if user tries to compose a URL to a non-existent group
	@group_elements = Element.all(:group => @linear_group, :order => [ :group.asc ])
	@title = "Group ##{traditional_group}"
	erb :group
end

=begin
get '/import' do # load page whose function is to import data
	erb :import
end
=end