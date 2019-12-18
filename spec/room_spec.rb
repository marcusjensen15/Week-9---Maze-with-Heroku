require('rspec')
require('room')
describe('#Room') do

  describe('#doors') do |variable|
    it('should hold an array of doors') do
      room = Room.new(7)
      expect(room.doors).to(eq([3]))
    end
  end
end
