require 'rubygems'  
require 'sinatra'  
require 'data_mapper'

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

class Orbital
	include DataMapper::Resource
	property :id, Integer, :key => true
	property :orbital, Text
end

DataMapper.finalize.auto_upgrade!

MY_TITLE = "Hi there"

@@elements			= Element.all :order => :atomic_num.asc
	# Element.all means SELECT * (in SQL)
@@max_period			= Element.last.period

MAX_P = @@max_period # Change these objects used on multiple pages (ebyp, max_period, max_group) to CONSTANTS?

@@max_group_element = Element.all(:order => [ :group.desc ], :limit => 1)
	@@max_group_element.each do |element|
		@@max_group = element.group
	end

	@@ebyp = Array.new(@@max_period) # array to hold elements
	@@ebyp.each_index do |period| # build a 2D array: by period, then by element
		@@ebyp[period] = @@elements.select{|element| element.period == period+1}
	end
@@elements			= Element.all :order => :atomic_num.asc

@@bases				= Base.all

get '/' do  # load home page

=begin
	@ebypHash = Hash.new()
    for period in 1..(@ebyp.size)
    @ebypHash[period]=Array.new()
        #puts "Working on period #{period}"
        #puts "period #{period}: #{@ebyp[period-1]}"
        for element in 1..(@ebyp[period-1].size) # Within a period,
#            @ebypHash[period][element] = @ebyp[period-1][element-1] # number elements serially, e.g. pd2 => 1, 2, 3,...8
			@elementToAdd = @ebyp[period-1][element-1] # the element to add next, as an object
			#@group = @elementToAdd.group
            @ebypHash[period].push(@elementToAdd)
#			@group = @ebyp[period-1][element-1].group
#           @ebypHash[period][@group] = @ebyp[period-1][element-1] 
              # number elements by group, e.g. pd2 => 1, 2, 13, 14, 15,...18
        end
    end
=end
	
	#@elementlast		= Element.last
	#@elementp1			= @elements.select{|element| element.period == 1}
	@title = 'All Elements'
	erb :home 
end

get '/element/:atomic_num' do  # load element page
	@origin = Element.get params[:atomic_num]
	@title = "Element ##{params[:atomic_num]}"
	erb :element
end

get '/period/:period' do  # load period page
	@period = params[:period].to_i
	redirect '/' if @period > @@max_period	# redirect to home page if user tries to compose a URL to a non-existent period
	@title = "Period ##{params[:period]}"
	erb :period
end

get '/group/:group' do  # load period page
	@group = params[:group].to_i
	redirect '/' if @group > @@max_group	# redirect to home page if user tries to compose a URL to a non-existent group
	@title = "Group ##{params[:group]}"
	erb :group
end
