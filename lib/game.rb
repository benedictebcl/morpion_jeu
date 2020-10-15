

class Game
    attr_accessor :player1, :player2, :board, :turn, :show

	def initialize(name_player1, name_player2)
		@player1 = Player.new(name_player1, "X")
		@player2 = Player.new(name_player2, "o")
		@board = Board.new
		@turn = 1

	end



	def menu
		if @turn.even?
		puts "Salut #{@player2.name}, dans quelle case veux-tu jouer ?"
		else
		puts 	"Salut #{@player1.name}, dans quelle case veux-tu jouer ?"
		end
		@board.my_cases.each do |key, value|
			if value.is_empty? 
				puts key
			end
		end
		puts "------------------------------"
		print "> "
		player_choice = gets.chomp.to_s.downcase
		
		menu_choice(player_choice)
		

	end

	def menu_choice(choice)
		player_choice = choice
		@board.my_cases.each do |k, v|
			if (choice == k) 
					if v.is_empty? 
					modif_board(player_choice)
					@turn += 1
					else
					puts "nononon, tu peux pas jouer ici bro"
					print ">"
					player_choice = gets.chomp.to_s.downcase
					menu_choice(player_choice)
					end
			end		
		end
	end

	def modif_board(player_choice)
		puts "Tour nº#{@turn}"
		if @turn.even?
			@board.my_cases.each do |key, value|
				if (key == player_choice) && (@board.my_cases[key].is_empty? == true)
					@board.my_cases[player_choice].case_display = "o"
				end
			end			
		else 
			@board.my_cases.each do |key, value|
				if (key == player_choice) && (@board.my_cases[key].is_empty? == true)
					@board.my_cases[player_choice].case_display = "X"		
				end	
			end
		end
	end


	def victory_player1?
		if ((@board.my_cases["a1"].case_display == "X") && (@board.my_cases["a2"].case_display == "X") && (@board.my_cases["a3"].case_display == "X"))
			return true
		elsif ((@board.my_cases["b1"].case_display == "X") && (@board.my_cases["b2"].case_display == "X") && (@board.my_cases["b3"].case_display == "X"))
		return true
		elsif ((@board.my_cases["c1"].case_display == "X") && (@board.my_cases["c2"].case_display == "X") && (@board.my_cases["c3"].case_display == "X"))
		return true
		elsif ((@board.my_cases["a1"].case_display == "X") && (@board.my_cases["b1"].case_display == "X") && (@board.my_cases["c1"].case_display == "X"))
		return true
		elsif ((@board.my_cases["a2"].case_display == "X") && (@board.my_cases["b2"].case_display == "X") && (@board.my_cases["c2"].case_display == "X"))
		return true
		elsif ((@board.my_cases["a3"].case_display == "X") && (@board.my_cases["b3"].case_display == "X") && (@board.my_cases["c3"].case_display == "X"))
		return true
		elsif ((@board.my_cases["a1"].case_display == "X") && (@board.my_cases["b2"].case_display == "X") && (@board.my_cases["c3"].case_display == "X"))
		return true
		elsif((@board.my_cases["c1"].case_display == "X") && (@board.my_cases["b2"].case_display == "X") && (@board.my_cases["a3"].case_display == "X"))
		return true
		end
	end

	def victory_player2?
			if ((@board.my_cases["a1"].case_display == "o") && (@board.my_cases["a2"].case_display == "o") && (@board.my_cases["a3"].case_display == "o"))
			return true
			elsif ((@board.my_cases["b1"].case_display == "o") && (@board.my_cases["b2"].case_display == "o") && (@board.my_cases["b3"].case_display == "o"))
			return true
			elsif ((@board.my_cases["c1"].case_display == "o") && (@board.my_cases["c2"].case_display == "o") && (@board.my_cases["c3"].case_display == "o"))
			return true
			elsif ((@board.my_cases["a1"].case_display == "o") && (@board.my_cases["b1"].case_display == "o") && (@board.my_cases["c1"].case_display == "o"))
			return true
			elsif ((@board.my_cases["a2"].case_display == "o") && (@board.my_cases["b2"].case_display == "o") && (@board.my_cases["c2"].case_display == "o"))
			return true
			elsif ((@board.my_cases["a3"].case_display == "o") && (@board.my_cases["b3"].case_display == "o") && (@board.my_cases["c3"].case_display == "o"))
			return true
			elsif ((@board.my_cases["a1"].case_display == "o") && (@board.my_cases["b2"].case_display == "o") && (@board.my_cases["c3"].case_display == "o"))
			return true
			elsif ((@board.my_cases["c1"].case_display == "o") && (@board.my_cases["b2"].case_display == "o") && (@board.my_cases["a3"].case_display == "o"))
			return true 
			end
	end


	def is_still_ongoing?
		if (victory_player1? != true) && (victory_player2? != true) && (@turn <= 9)
			return true
		else return false
		end

	end

	def game_over
	if victory_player1? == true
	puts "C'est finiiii ! #{player1.name} a gagné"
	elsif victory_player2? == true
		puts "C'est finiiii ! #{player2.name} a gagné"
	else puts "Oh shit ! DRAW"
	end
end
end