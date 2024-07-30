require_relative './playing_piece'
require_relative './piece_type'

class PieceY < PlayingPiece
    def initialize
        super(PieceType::O)
    end
end