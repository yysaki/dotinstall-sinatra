require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = "My BBS"
  erb :index
end
