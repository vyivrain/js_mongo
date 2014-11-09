require 'sinatra'
require 'mongoid'
require 'json/ext'
require 'sinatra/cross_origin'

configure do
  Mongoid.load!("./mongoid.yml")
end