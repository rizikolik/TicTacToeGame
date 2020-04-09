require_relative"human"

class Board
    attr_accessor :dimension
    def initialize(n=3)
        @dimension= Array.new(n) {Array.new(n,"_")}
        
    end

    def valid?(pos)
		
        return true if @dimension[pos[0]][pos[1]]
		false
    end
    def empty?(pos)
        return true if @dimension[pos[0]][pos[1]]=="_"
		false
    end
    def place_mark(pos,mark)
        if  valid?(pos)
			if empty?(pos)
			@dimension[pos[0]][pos[1]]=mark
			else 
			raise "position is not empty"
			end
			
    
        else   
            raise "please enter a valid position"
        end
    end

    def print
        @dimension.each do |k|
            puts k.join(' ')
        end

    end

    def win_row?(mark)
		@dimension.any?{|k| k.all?mark}
    end
    def win_col?(mark)
		@dimension.transpose.any?{|k| k.all?mark}
    end
    def win_diagonal?(mark)
		
		from_left=(0...@dimension.length).each do |k|
			@dimension[k][k]==mark
		end
		from_right=(0...@dimension.length).each do |k|
			
		col =@dimension.length-1-i
			@dimension[k][col]==mark
		end
		from_right || from_left
    end
    def win?(mark)
    end

    def empty_positions?(mark)

    end

 
end

a=Board.new
 a.place_mark([1, 2], :x)
a.place_mark([0, 0], :O)
a.print













