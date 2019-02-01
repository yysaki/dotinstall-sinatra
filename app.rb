require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'rack/csrf'

use Rack::Session::Cookie, secret: "thisissomethingsecret"
use Rack::Csrf, raise: true

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './bbs.db'
)

class Comment < ActiveRecord::Base
  validates :body, presence: true
end

get '/' do
  @title = "My BBS"
  @comments = Comment.all
  erb :index
end

post '/create' do
  Comment.create(body: params[:body])
  redirect to('/')
end

post '/destroy' do
  Comment.find(params[:id]).destroy
end
