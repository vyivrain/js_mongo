require 'sinatra'
require 'pry'
require 'sinatra/cross_origin'

set :port, 3000
set :public_folder, File.dirname(__FILE__) + '/js'
set :allow_origin, :any
set :allow_methods, [:get, :post, :options]
set :allow_credentials, true

helpers do
  def include_header
    headers['Access-Control-Allow-Origin'] = 'http://localhost:5000/'
  end
end

get '/' do
  cross_origin
  "This is available to cross-origin javascripts"
  erb :root, layout: :index
end
