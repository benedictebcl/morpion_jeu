class Show
		attr_accessor :board

		def initialize
			@board
			@boardcase
			board_display
	 	end

	 	def board_display

	case_separator = "|"
	symbol_place = "_"
		puts ""
		puts ""
		puts "             1    2    3" 
		puts "               	#{case_separator}     #{case_separator}"
		puts "       a   __#{@game.board.my_cases["a1"].case_display}__#{case_separator}__#{@game.board.my_cases["a2"].case_display}__#{case_separator}__#{@game.board.my_cases["a3"].case_display}__"
		puts "                #{case_separator}     #{case_separator}"
		puts "       b   __#{@game.board.my_cases["b1"].case_display}__#{case_separator}__#{@game.board.my_cases["b2"].case_display}__#{case_separator}__#{@game.board.my_cases["b3"].case_display}__"
		puts "                #{case_separator}     #{case_separator}"
		puts "       c     #{@game.board.my_cases["c1"].case_display}  #{case_separator}  #{@game.board.my_cases["c2"].case_display}  #{case_separator}  #{@game.board.my_cases["c3"].case_display}  "
		puts ""
		puts ""
		puts ""

	end

 end