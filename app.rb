require 'sinatra'
require 'shotgun'

get '/' do
  "hello dave"
end

get '/secret' do
  "1234567890"
end

get '/public' do
  "please show this message"
end

get '/random_cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get '/named_cat' do
  p params
  @name = params[:name]
  erb(:index)
end
