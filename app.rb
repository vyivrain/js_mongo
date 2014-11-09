require 'sinatra'
require 'mongoid'
require 'pry'
require './models/app_model'
require 'sinatra/cross_origin'

set :port, 5000

get '/' do
end

get '/todays_weather.json' do
  App.last.to_json
end