require 'sinatra'
require 'shotgun'

cat_html_file = './public/cat.html'

cat_html_string = File.read(cat_html_file)

get '/' do
  "hello dave"
end

get '/secret' do
  "1234567890"
end

get '/public' do
  "please show this message"
end

get '/cat' do
  cat_html_string
end
