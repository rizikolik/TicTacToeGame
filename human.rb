class Human
    attr_reader :mark
def initialize(mark)
    @mark=mark
end
def get_position
    puts "Player #{mark.to_s} , enter two numbers represents a position for `row col`"
    pos = gets.chomp.split(' ').map(&:to_i)
    raise 'sorry,the position was incorrect' if pos.length != 2
    pos
end
    
end
