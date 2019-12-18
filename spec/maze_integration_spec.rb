require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('navigate to next room', {:type => :feature}) do
  it('clicks button and changes room') do
    visit('/1')
    click_on('Go to door number 4')
    expect(page).to have_content('17')
  end
end

# describe('create a song path', {:type => :feature}) do
#   it('creates an album and then goes to the album page') do
#     album = Album.new("Yellow Submarine", nil, '', '', '')
#     album.save
#     visit("/albums/#{album.id}/songs/new")
#     fill_in('song_name', :with => 'All You Need Is Love')
#     click_on('Go!')
#     expect(page).to have_content('All You Need Is Love')
#   end
# end
