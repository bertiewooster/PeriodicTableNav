#configure :development do # Make development the default because it doesn't get called locally for some reason
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres://jemonat@localhost/elements')
	#@@config = "development"
#end

configure :production do # Production does get called on Heroku, so it will override development
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///0.0.0.0/elements')
	#@@config = "production"
end

ActiveRecord::Base.establish_connection(
	:adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
	:host     => db.host,
	:username => db.user,
	:password => db.password,
	:database => db.path[1..-1],
	:encoding => 'utf8'
)