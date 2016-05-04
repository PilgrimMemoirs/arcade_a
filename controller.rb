require 'sinatra'
require_relative 'models/rps.rb'


get '/' do
	erb :index
end


post '/p1' do
	@plyr1_name = params[:plyr1_name]
	@plyr2_choice = params[:plyr1_choice]
	erb :p2
end


post '/results' do
	plyr1 = Player.new(params[:plyr1_name])
	plyr2 = Player.new(params[:plyr2_name])
	game = Game.new(plyr1, plyr2)

	plyr1.choice = params[:plyr1_choice]
	plyr2.choice = params[:plyr2_choice]
		
	game.results
	@scores = game.scoreboard

	erb :results
end