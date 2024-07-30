require_relative './playing_piece'
class Board
    attr_accessor :size,
                  :playing_piece_list
    

    def initialize(size)
        @size = size
        @playing_piece_list = Array.new(size) { Array.new(size, nil) }
    end

    def print_board
        @playing_piece_list.each do |row_ele|
            row_ele.each do |col_ele|
                print "#{col_ele}  |"
            end
            print "\n"
        end
    end
end