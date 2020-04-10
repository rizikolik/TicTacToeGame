
class Computer
    attr_reader :mark
def initialize(mark)
    @mark=mark
end
def get_position(legal_positions)
     pos =legal_positions.sample
           puts "Computer #{self.mark} chose position #{pos.to_s}"
    pos
end

end
