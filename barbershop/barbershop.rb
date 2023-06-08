require 'sinatra'

get "/" do
  erb :index
end

post "/" do
  @username = params[:username]
  @phone = params[:phone]
  @date = params[:date]

  @title = 'thanks'
  @message = "Dear #{@username}, we'll be waiting for you at #{@date}"

  f = File.open "./barbershop//public/users.txt", "a"
  f.write "User: #{@username}, Phone: #{@phone}, Date: #{@date}\n"
  f.close

  erb :message
end

get "/admin" do
  erb :admin
end

post "/admin" do
  @admin_pass = params[:admin_pass]

  if @admin_pass == '123'
    @title = 'thanks'
    @message = send_file "./barbershop//public/users.txt"
    erb :message
  else
    @title = 'no'
    @message = 'no'
    erb :message
  end
end
