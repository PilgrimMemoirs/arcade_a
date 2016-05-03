require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	game1 = Game.new("Alden","Andrew")
	erb :index
end