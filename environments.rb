# #The environment variable DATABASE_URL should be in the following format:
# # => postgres://{user}:{password}@{host}:{port}/path
# configure :production do
# 	db = URI.parse(ENV['DATABASE_URL'] )
#
# 	ActiveRecord::Base.establish_connection(
# 			:adapter => 'mysql2'
# 			:host     => db.host,
# 			:username => db.user,
# 			:password => db.password,
# 			:database => db.path[1..-1],
# 			:encoding => 'utf8'
# 	)
# end



#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production do
	db = URI.parse(ENV['DATABASE_URL'] )

	ActiveRecord::Base.establish_connection(
			:adapter => 'mysql2'
			:host     => 'us-cdbr-iron-east-05.cleardb.net',
			:username => 'baadd3ec66bd37',
			:password => '06105946',
			:database => 'heroku_d621c641b841663',
			:encoding => 'utf8'
	)
end
