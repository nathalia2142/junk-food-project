require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base
get '/' do
    erb :index
  end
post '/findfood' do
  user_mood=params[:emotions]
  reason=params[:why]
  @results=choose_food(user_mood,reason)
  #@results=["nachos", "http://..."]
  @food_result=@results[0]
  @link=@results[1]
erb :results 
  end
end