require "#{__dir__}/song-class.rb"
require "#{__dir__}/song-list-class.rb"

songs = SongList.new

songs_list_file = File.open( "#{__dir__}/songs-list.txt" )

songs_list_file.each do | line |
  song_file, duration, artist, title = line.chomp.split( /\s*\|\s*/ )

  artist.squeeze!( " " )
  mins, secs = duration.scan( /\d+/ )
  duration = mins.to_i * 60 + secs.to_i

  songs.append Song.new( title, artist, duration )
end

songs_list_file.close

puts songs.list
