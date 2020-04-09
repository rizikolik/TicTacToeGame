require_relative "human"
require_relative  "board"
class Game
    attr_reader :current_player , :board

    def initialize(player_1_mark, player_2_mark)
        @player_1=Human.new(:X)
        @player_2=Human.new(:O)
        @player_1_mark=player_1_mark
        @player_2_mark=player_2_mark
        @current_player=@player_1
        @board=Board.new
    end

    def switch_turn
        if @current_player==@player_1
            @current_player=@player_2
        else
            @current_player=@player_1
        end
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

game=Game.new(:X,:O)
game.play

