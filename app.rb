require('sinatra')
require('sinatra/reloader')
require('./lib/maze')
require('pry')
also_reload('lib/**/*.rb')

main_maze = Maze.new(21)

get('/') do
  erb(:welcome)
end

get('/:id') do
  @maze = main_maze
  @maze.change_room(params[:id].to_i)
  return erb(:exit) if @maze.find_exit?
  @doors = @maze.get_doors
  erb(:room)
end

post('/') do
end

patch('/') do
end

delete('/') do
end
