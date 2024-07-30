class Player
    attr_accessor :username,
                  :playing_piece
    
    def initialize(username, playing_piece)
        @username = username
        @playing_piece = playing_piece
    end
end