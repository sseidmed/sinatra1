#sinatra1.rb
require 'sinatra'  
enable :sessions

get "/set" do
    session[:message] = params[:message]
    "saved the session"
  end 
  get "/get" do
    session[:message]
  end
  

get '/' do
    "Welcome to Sinatra"
end

  post "/submitted" do
    "<h1>Form Submitted</h1>"
  end


  post "/logon" do
    if params[:username] == "bob" and params[:pwd] == "pass"
      "Success"
    else
      "Failure"
    end
  end
  
  post "/hello" do
     session[:session_message] = params[:name]
     "Saved the name"
     #"<h1>I love to eat #{session[:session_message]}</h1>"
  end
  
  get "/greet" do
      "Hello, #{session[:session_message]}"
  end
      


