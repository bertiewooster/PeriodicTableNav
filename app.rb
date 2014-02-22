require 'sinatra'
require 'sinatra/activerecord'

#db = URI.parse('postgres://jemonat@localhost/jemonat')
db = URI.parse('postgres://jemonat@localhost/elements')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)

SITE_TITLE = "Periodic Table Navigator"  
SITE_DESCRIPTION = "See how the elements are related to each other" 

#class Note < ActiveRecord::Base
class Element < ActiveRecord::Base
end

get "/" do
  #@notes = Note.order("created_at DESC")
  #redirect "/new" if @notes.empty?
  @element = Element.find(2)
  @elements = Element.order("atomic_num ASC")
  erb :index
end

=begin
get "/new" do
  erb :new
end

post "/new" do |note|
  @note = Note.new(note)
  if @note.save
    redirect "note/#{@note.id}"
  else
    erb :new
  end
end

get "/note/:id" do |id|
  @note = Note.find_by_id(id)
  erb :note
end
=end