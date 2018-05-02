require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "us-cdbr-iron-east-05.cleardb.net",
  :username => "baadd3ec66bd37",
  :password => "06105946",
  :database => "heroku_d621c641b841663"
)

class User < ActiveRecord::Base
end

# ActiveRecord::Migration.create_table :users do |t|
#   t.string :name
#   t.string :password
# end

class App < Sinatra::Application
end

class App < Sinatra::Base
  get '/' do
    'Hi ' + User.first.name + ', your password is ' + User.first.password
  end
end

class App < Sinatra::Base
  get '/test/:name' do
    "Hello #{params['name']}!"
  end
end
