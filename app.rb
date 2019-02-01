require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = "My Site"
  erb :index
end

get '/about' do
  @title = "About this Site"
  erb :about
end
