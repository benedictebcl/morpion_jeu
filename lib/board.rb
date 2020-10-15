
class Board
  attr_accessor :board_case, :my_cases
  attr_reader :case_separator
  

  def initialize
    @my_cases = {"a1" => BoardCase.new, "a2" => BoardCase.new, "a3" => BoardCase.new, 
      "b1" => BoardCase.new, "b2" => BoardCase.new, "b3" => BoardCase.new, 
      "c1" => BoardCase.new, "c2" => BoardCase.new, "c3" => BoardCase.new}
  
  end

  def show_board
    
    @case_separator = "|"
    puts ""
    puts ""
    puts "             1    2    3" 
    puts "                #{case_separator}     #{case_separator}"
    puts "       a   __#{@my_cases["a1"].case_display}__#{case_separator}__#{@my_cases["a2"].case_display}__#{case_separator}__#{@my_cases["a3"].case_display}__"
    puts "                #{case_separator}     #{case_separator}"
    puts "       b   __#{@my_cases["b1"].case_display}__#{case_separator}__#{@my_cases["b2"].case_display}__#{case_separator}__#{@my_cases["b3"].case_display}__"
    puts "                #{case_separator}     #{case_separator}"
    puts "       c     #{@my_cases["c1"].case_display}  #{case_separator}  #{@my_cases["c2"].case_display}  #{case_separator}  #{@my_cases["c3"].case_display}  "
    puts ""
    puts ""
    puts ""

  end

end