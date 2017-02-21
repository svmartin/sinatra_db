require 'sinatra'
require 'sinatra/reloader' if development?
require 'tilt/erubis'
require "redcarpet"
require "yaml"
require 'bcrypt'

get "/" do
  "Getting started."
end
