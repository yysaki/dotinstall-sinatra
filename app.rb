require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello world again"
end

# get '/hello/:name' do
#   "hello #{params[:name]}"
# end

# get '/hello/:name' do |name|
#   "hello #{name}"
# end

# get '/hello/:fname/:lname' do |f, l|
#  "hello #{f} #{l}"
# end

get '/hello/:fname/?:lname?' do |f, l|
 "hello #{f} #{l}"
end
