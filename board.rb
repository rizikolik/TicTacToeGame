require_relative"human"

class Board
    attr_accessor :dimension
    def initialize(n=3)
        @dimension= Array.new(n) {Array.new(n,"_")}
        
    end

    def valid?(pos)
        return true if @dimension[pos[0],pos[1]]
    end
    def empty?(pos)
        return true if @dimension[pos[0],pos[1]]=="_"
    end
    def place_mark(pos,mark)
        if valid?(pos)&&empty?(pos)
        @dimension[pos]=mark
        else   
            raise "please enter a valid position"
        end
    end
end