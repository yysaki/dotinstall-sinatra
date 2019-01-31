require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello world"
end

# get '/hello/*/*' do |f, l|
#  "hello #{f} #{l}"
# end

# get '/hello/*/*' do |f, l|
#  "hello  #{params[:splat][0] }#{params[:splat][1]}"
# end

get %r{/users/([0-9]*)} do
 "user id =  #{params[:captures][0]}"
end
