require 'sinatra'

get '/' do
  erb :index
end
get '/welcome' do
  erb :welcome
end

get '/contacts' do
  @title = 'contacts'
  @message = 'phone 121211'
  erb :message
end

get '/faq' do
  @title = 'FAQ'
  @message = 'under construction'
  erb :message
end

get '/something' do
  @title = 'something'
  @message = 'under construction'
  erb :message
end

post '/' do
  @login = params[:aaa]
  @pass = params[:bbb]

  if @login == "admin" && @pass == "secret"
    erb :welcome
  elsif @login == 'admin' && @pass == 'admin'
    @message = 'ha ha! nice try!'
    erb :index
  else
    @message = 'access denied'
    erb :index
  end
end