require('./lib/room')

class Maze

  attr_reader(:rooms, :current_room, :final_room, :map, :maze)

  def initialize(rooms)
    @rooms = (1..rooms).map { |n| Room.new(n) }
    @current_room = 1
    @final_room = 16
  end

  def change_room(id)
    @current_room = id.to_i
  end

  def get_doors
    @rooms.find { |i| i.id  == @current_room  }.doors
  end

  def find_exit?
    @current_room == @final_room
  end

  def self.get_map(id)
    map = {
      1 => [2,3,4],
      2 => [19,20,21,1],
      3 => [6,7,8,1],
      4 => [17,8,5,1],
      5 => [9,10,4],
      6 => [3],
      7 => [3],
      8 => [11,4,12],
      9 => [14,15,5],
      10 => [5],
      11 => [21,8],
      12 => [13,8],
      13 => [12],
      14 => [9],
      15 => [9],
      16 => [18],
      17 => [4,18],
      18 => [16,17],
      19 => [2, 20],
      20 => [19,18,2],
      21 => [2,11]
    }
    map[id]
  end

end
