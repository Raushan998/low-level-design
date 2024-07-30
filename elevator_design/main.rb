require_relative './building'
require_relative './floor'
floor_1 = Floor.new(1)
floor_2 = Floor.new(2)
floor_3 = Floor.new(3)
floor_4 = Floor.new(4)

floor_list = [floor_1, floor_2, floor_3, floor_4]
builing = Building.new(floor_list)