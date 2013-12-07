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
	@elements			= Element.all #:order => :atomicnum.desc
	#Element.all means SELECT * (in SQL)
	@max_period			= Element.last.period
	
	@ebyp = Array.new(@max_period) # array to temporarily hold elements (will convert to hash later)
	@ebyp.each_index do |period| # build a 2D array: by period, then by element
		@ebyp[period] = @elements.select{|element| element.period == period+1}
	end

@ebypHash = Hash.new()
    for period in 1..(@ebyp.size)
    @ebypHash[period]=Hash.new()
        #puts "Working on period #{period}"
        #puts "period #{period}: #{@ebyp[period-1]}"
        for element in 1..(@ebyp[period-1].size)
            @ebypHash[period][element] = @ebyp[period-1][element-1]
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
