# battle.rb
require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack'do
    @game.attack(@game.inactive_player)
    erb(:attack)
  end

  get '/switch_turn' do
    Game.instance.switch_turn
    Game.instance.turn.hp.zero? ? redirect('/game_over') : redirect('/play')
  end

  get '/game_over' do
    erb(:game_over)
  end

end
