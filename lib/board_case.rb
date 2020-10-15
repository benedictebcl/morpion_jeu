class BoardCase
    attr_accessor :case_name, :case_display
    
        def initialize
            @case_display = "_" 
        end
    
        def is_empty?
            if @case_display == "_" 
                return true
            end
        end
    
        def which_symbol
            if @case_display == "X"
                return "X"
            else @case_display == "o"
                return "o"
            end
        end

end