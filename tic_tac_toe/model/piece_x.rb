require_relative './playing_piece'
require_relative './piece_type'

class PieceX < PlayingPiece
    def initialize
        super(PieceType::X)
    end
end