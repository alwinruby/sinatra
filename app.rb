require 'sinatra'
#require 'shotgun'

get '/' do
  'Hello'
end

get '/secret' do
  'I have a Secret!'
end

get '/garden' do
  'Trees and Flowers'
end

get '/apple' do
  'iphone'
end

get '/sun' do
  'hot, hot, hot'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @nickname = params[:nickname]
  erb(:index)
end

get '/cat_form' do
  print params
  erb(:form)
end
