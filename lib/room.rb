require('./lib/maze')

class Room

  attr_reader :id, :doors

  def initialize(id)
    @id = id
    @doors = Maze.get_map(id)
  end
end
