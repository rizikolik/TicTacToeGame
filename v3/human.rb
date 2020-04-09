class Human
    attr_reader :mark
def initialize(mark)
    @mark=mark
end
def get_position(legal_positions)

    until legal_positions.include?(pos)
    puts "Player #{mark.to_s} , enter two numbers represents a position for `row col`"
    pos = gets.chomp.split(' ').map(&:to_i)
    puts "#{pos} is not a legal position" if !legal_positions.include?(pos)
    raise 'sorry, that was invalid :(' if pos.length != 2
    end
    pos
end
    
end

hum=Human.new(:X)

p hum
