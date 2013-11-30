require 'rubygems'  
require 'sinatra'  
require 'data_mapper'

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/Elements.sqlite")  
      
class Element  
	include DataMapper::Resource  
	property :atomicnum, Integer, :key => true
	property :symbol, Text
	property :name, Text
	property :econfigvalence, Text
	property :period, Integer
	property :group, Integer
end  

DataMapper.finalize.auto_upgrade!

get '/' do  # load home page
	@elements = Element.all #:order => :atomicnum.desc  
	@title = 'All Elements'  
	erb :home  # template: home page 
end  
