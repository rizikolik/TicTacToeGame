require_relative "./human"
require_relative "./computer"
require_relative  "./board"
class Game
    

    def initialize(n,marks)
        @players = marks.map do |k,bolean|
			bolean ? Computer.new(k) : Human.new(k)
			end
        @current_player = @players.first
        @board = Board.new(n)
    end
    def switch_turn
        @current_player = @players.rotate!.first
    end

    def play
    while @board.empty_positions?
        @board.print
		pos1=@board.legal_positions
        pos=@current_player.get_position(pos1)
        mark=@current_player.mark
        @board.place_mark(pos,mark)
       if @board.win?(mark)
       puts 'Game Over'
                puts @current_player.mark.to_s + ' HAS WON!'
                return

       else

        switch_turn
       end
    end
        puts "Game over!"
        puts "DRAW"
    


    end
end

machine_civil_war = Game.new(10, h: true, u:false, e: true)
machine_civil_war.play

