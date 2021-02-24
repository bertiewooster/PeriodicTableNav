require 'sinatra' #meaningless comment
#require 'sinatra/activerecord'
#require 'active_record'
#require './environments'

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

get "/" do
	erb :'inactive/test_simple'
end