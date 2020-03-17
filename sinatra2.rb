require 'sinatra'
require 'sinatra/reloader'

get '/' do
    erb :howmany
end

post '/candles' do
    @number = params[:number].to_i
    erb :candles
    
end

