require_relative './model/player'
require_relative './model/board'
require_relative './model/piece_x'
require_relative './model/piece_o'

class Game
    attr_accessor :player_list,
                  :board
    
    def initialize_game
        player_1 = Player.new("Player 1", PieceX.new)
        player_2 = Player.new("Player 2", PieceY.new)
        @player_list = []
        @player_list.push(player_1)
        @player_list.push(player_2)
        @board = Board.new(3)
    end

    def play_game
        no_winner = true
        while no_winner
            player = player_list[0]
            puts "It's turn for #{player.username}"
            @board.print_board
            
        end
    end
end