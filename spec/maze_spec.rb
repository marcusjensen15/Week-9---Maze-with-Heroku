require('rspec')
require('maze')

describe('#Maze') do

  before(:each) do
    @maze = Maze.new(21)
  end

  describe('#final_room') do
    it('should have a store final_room') do
      expect(@maze.final_room).to(eq(16))
    end
  end

  describe('#change_room') do
    it('should change room') do
      @maze.change_room(5)
      expect(@maze.current_room).to(eq(5))
    end
  end


  describe('#get_doors') do
    it('should return an array of possible doors') do
      @maze.change_room(20)
      expect(@maze.get_doors).to(eq([19,18,2]))
    end
  end



end
