require_relative "board"
class Computer
    attr_reader :mark
def initialize(mark)
    @mark=mark
end
def get_position(legal_positions)
     pos =legal_positions.sample
    raise 'sorry,the position was incorrect' if !pos
    pos
end

end