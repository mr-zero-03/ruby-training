require "#{__dir__}/song-class.rb"

puts 'SONG (Class)'
a_song = Song.new( "New Gold", "Gorillaz", 180 )
puts a_song
puts "The duration in minutes is: #{a_song.durationInMinutes}"
a_song.durationInMinutes = 4
puts a_song
puts "The duration in minutes is: #{a_song.durationInMinutes}"
puts a_song.play
a_song_2 = Song.new( "Is It True?", "Tame Impala", 173 )
puts a_song_2.play
