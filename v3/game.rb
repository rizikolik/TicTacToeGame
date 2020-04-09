require_relative "human"
require_relative  "board"
class Game
    attr_reader :current_player , :board

    def initialize(*marks,n)
        @players = marks.map { |mark| Human.new(mark) }
        @current_player = @players.first
        @board = Board.new(n)
    end

    def switch_turn
        @current_player = @players.rotate!.first
    end

    def play

    while @board.empty_positions?
        @board.print
        pos=@current_player.get_position
        mark=@current_player.mark
        @board.place_mark(pos,mark)
       if @board.win?(mark)
        puts "Victory! #{current_player.mark.to_s}"
        @board.print
        return
       else

        switch_turn
       end
    end
        puts "Game over!"
        puts "DRAW"
    


    end
end

game=Game.new(:X,:Y,:O,6)
game.play

