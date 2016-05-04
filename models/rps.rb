class Player

attr_accessor :name, :response, :wins

	def initialize(name)
	 @name = name
	 @wins = 0
	end
end


class Game
	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
	end

	def results 
		if @player1.response =="rock" && @player2.response=="rock"
			puts "Tie."
		elsif @player1.response=="scissors" && player2.response=="scissors"
			puts "Tie."
		elsif @player1.response=="paper" && @player2.response=="paper"
			puts "Tie."
		
		elsif  @player1.response=="rock" && @player2.response =="scissors"
			puts "#player 1 wins"
			@player1.wins += 1
		elsif @player1.response=="scissors" && @player2.response =="paper"
			puts "player 1 wins"
			@player1.wins += 1
		elsif @player1.response=="paper" && @player2.response=="rock"
			puts "player 1 wins"
			@player1.wins += 1
		elsif @player2.response=="rock" && @player1.response=="scissors"
			puts "player 2 wins"
			@player2.wins += 1
		elsif @player2.response=="scissors" && @player1.response=="paper"
			puts "player 2 wins"
			@player2.wins += 1
		elsif @player2.response=="paper" && @player1.response=="rock"
			puts "player 2 wins"
			@player2.wins += 1
		end
	end

	def scoreboard
		"#{@player1.name} = #{@player1.wins}, #{@player2.name} = #{@player2.wins} "
	end

end




	
