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
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack_p2'do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack_p2)
  end
end
