require "#{__dir__}/song-class.rb"
require "#{__dir__}/song-list-class.rb"

puts 'SONGS LIST (Containers)'

list = SongList.new

list.
  append( Song.new( 'title1', 'artist1', 1 ) ).
  append( Song.new( 'title2', 'artist2', 2 ) ).
  append( Song.new( 'title3', 'artist3', 3 ) ).
  append( Song.new( 'title4', 'artist4', 4 ) )

puts "\n - Songs List: -"
puts list.list

puts "\n - Searching Song with Title -"
puts list[ 'title2' ]

puts "\n - Removing songs -"
puts list.delete_at( 'title4' ) # Song: title4 - artist4 (4)
puts list.delete_first # Song: title1 - artist1 (1)
puts list.delete_first # Song: title2 - artist2 (2)
puts list.delete_last # Song: title3 - artist3 (3)
puts list.delete_last # nil
puts ' - All the songs were removed -'
