require 'mongoid'
require './config/config'
require 'open-uri'
require 'json/ext'

class App
  include Mongoid::Document

  field :temperature, type: String
  field :date, type: Date
  field :created_at, type: Date

  def self.update_db
    content = open("http://api.openweathermap.org/data/2.5/weather?q=Kyiv,ua").read
    content = JSON.parse(content)
    a = App.new( temperature: content["main"]["temp"], date: content["dt"], created_at: Time.now )
    a.save
  end

end