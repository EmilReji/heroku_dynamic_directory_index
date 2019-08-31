require "sinatra"
require "sinatra/reloader" if development?
require "tilt/erubis"

get '/' do
  @reverse = false
  erb :root
end

get '/reverse' do
  @reverse = true
  erb :root
end
