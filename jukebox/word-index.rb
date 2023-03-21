require "#{__dir__}/song-class.rb"
require "#{__dir__}/word-index-class.rb"

an_index = WordIndex.new

song_1 = Song.new( "New Gold", "Gorillaz", 180 )
song_2 = Song.new( "New Gold 2", "Gorillaz 2", 360 )

an_index.index( song_1, "New New Gold" )
an_index.index( song_2, "New New Gold 2" )

puts "\nNow searching 'Gold':"
puts an_index.lookup( "Gold" )

puts "\nNow searching 'New':"
puts an_index.lookup( "New" )
