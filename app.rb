require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello world again"
end

get '/hello' do
  "hello 1000!"
end

get '/hello' do
  "hello 2"
end
