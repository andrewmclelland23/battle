# battle.rb
require 'sinatra/base'
require_relative 'player'
require_relative 'game'

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

  get '/attack'do
    @game = $game
    @game.attack(@game.inactive_player)
    erb(:attack)
  end
  get '/switch_turn' do
    $game.switch_turn
    redirect('/play')
  end
end
