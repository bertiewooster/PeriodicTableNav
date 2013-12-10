require 'rubygems'  
require 'sinatra'  
require 'data_mapper'

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/Elements.sqlite")  
      
class Element # Describes how to map from database 
	include DataMapper::Resource  
	property :atomic_num, Integer, :key => true
	property :symbol, Text
	property :name, Text
	property :e_config_valence, Text
	property :period, Integer
	property :group, Integer
end

class EConfigBase
	include DataMapper::Resource
	property :id, Integer, :key => true
	property :base, Text
end

DataMapper.finalize.auto_upgrade!

get '/' do  # load home page
	@elements			= Element.all :order => :atomic_num
	#Element.all means SELECT * (in SQL)
	@max_period			= Element.last.period
	
	@ebyp = Array.new(@max_period) # array to temporarily hold elements (will convert to hash later)
	@ebyp.each_index do |period| # build a 2D array: by period, then by element
		@ebyp[period] = @elements.select{|element| element.period == period+1}
	end

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
    
#	Try this (ActiveRecord syntax--adapt for DataMapper)
#	@elementp1 = Element.where{period: 1}
#	SELECT * WHERE period=1
	
	@elementlast		= Element.last
	@elementp1			= @elements.select{|element| element.period == 1}
	@econfigbases		= EConfigBase.all
	@econfigbaselast	= EConfigBase.last
	@title = 'All Elements'
	erb :home  # template: home page 
end  

get '/element/:atomic_num' do  # load element page
	@elements			= Element.all :order => :atomic_num
#	@origin = Element.get params[:atomic_num]
	#Element.all means SELECT * (in SQL)
#	@origin = "Yo!"	
#	@origin = @elements.select{|element| element.atomic_num > 10}
	@origin = Element.get([:atomic_num])
#	@origin = @elements.select{|element| element.atomic_num == :atomic_num}
#	@origin = @elements.select{|element| element.atomic_num == 2}
#	@origin = @origin[0]
	
#	@title = :atomic_num
	@title = "Element ##{params[:atomic_num]}"
	erb :element # template: element
end






