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
