# battle.rb
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:p1hp] = 100
    session[:p2hp] = 100
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @p1hp = session[:p2hp]
    @p2hp = session[:p2hp]
    erb(:play)
  end
end
