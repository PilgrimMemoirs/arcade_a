#get player's names and choices through a form
#Call choice, results and scoreboard manually

class Player

attr_accessor :name, :choice, :wins
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
		if @player1.choice =="rock" && @player2.choice=="rock"
			puts "Tie."
		elsif @player1.choice=="scissors" && player2.choice=="scissors"
			puts "Tie."
		elsif @player1.choice=="paper" && @player2.choice=="paper"
			puts "Tie."
		
		elsif  @player1.choice=="rock" && @player2.choice =="scissors"
			puts "#player 1 wins"
			@player1.wins += 1
		elsif @player1.choice=="scissors" && @player2.choice =="paper"
			puts "player 1 wins"
			@player1.wins += 1
		elsif @player1.choice=="paper" && @player2.choice=="rock"
			puts "player 1 wins"
			@player1.wins += 1
		elsif @player2.choice=="rock" && @player1.choice=="scissors"
			puts "player 2 wins"
			@player2.wins += 1
		elsif @player2.choice=="scissors" && @player1.choice=="paper"
			puts "player 2 wins"
			@player2.wins += 1
		elsif @player2.choice=="paper" && @player1.choice=="rock"
			puts "player 2 wins"
			@player2.wins += 1
		end
	end

	def scoreboard
		" SCORE: #{@player1.name} = #{@player1.wins}, #{@player2.name} = #{@player2.wins} "
	end

end




	
