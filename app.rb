require 'sinatra'
require 'sinatra/reloader' if development?
require 'tilt/erubis'
require "redcarpet"
require "yaml"
require 'bcrypt'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'

get "/" do
  erb :index
end

post "/submit" do
  @model = Model.new(params[:model])
  if @model.save
    redirect "/models"
  else
    "Sorry. There was an error, folks!"
  end
end


get "/models" do
  @models = Model.all
  erb :models
end
