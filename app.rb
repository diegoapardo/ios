require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "root",
  :password => "",
  :database => "ios"
)

class User < ActiveRecord::Base
end

# ActiveRecord::Migration.create_table :users do |t|
#   t.string :name
#   t.string :password
# end

class App < Sinatra::Application
end

get '/' do
  'Hi ' + User.first.name + ', your password is ' + User.first.password
end
