require 'rubygems'  
require 'sinatra'  
require 'data_mapper'

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/Elements.sqlite")  
      
class Element  
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
	@max_period			= Element.last.period
	
	@ebyp = Array.new(@max_period+1, "things")
	@ebyp.each_index do |period|
		@ebyp[period] = @elements.select{|element| element.period == period}
	end
		
	@elementlast		= Element.last
	@elementp1			= @elements.select{|element| element.period == 1}
	@econfigbases		= EConfigBase.all
	@econfigbaselast	= EConfigBase.last
	@title = 'All Elements'
	erb :home  # template: home page 
end  
