# battle.rb
require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    session[:p1hp] = 100
    session[:p2hp] = 100
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @p1hp = $player1.hp
    @p2hp = $player1.hp
    erb(:play)
  end

  get '/attack_p2'do
    @player1 = $player1.name
    @player2 = $player2.name
    Game.new.attack($player2)
    @p2hp = $player2.hp
    erb(:attack_p2)
  end
end
