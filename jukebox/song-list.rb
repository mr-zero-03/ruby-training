require './song-class.rb'

class SongList
  # Class Methods
  MaxTime = 5 * 60 # 5 minutes (this is a constant)

  def SongList.is_too_long?( song )
    song.duration > MaxTime
  end

  # Instance Methods
  def initialize( songs = [] )
    if songs.kind_of?( Array )
      @songs = songs
    end
  end

  public

  def append( song )
    @songs.push( song )
    @songs
  end

  def list
    @songs
  end

  def []( key )
    return @songs[ key ] if key.kind_of?( Integer )
    return @songs.find { | a_song | a_song.name == key }
  end

  def delete_first
    @songs.shift
  end

  def delete_last
    @songs.pop
  end

  def delete_at( key )
    return @songs.delete_at( key ) if key.kind_of?( Integer )
    return @songs.delete_at( @songs.find_index { | a_song | a_song.name == key } )
  end

end

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
