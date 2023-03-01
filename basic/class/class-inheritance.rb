# Class
class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  def to_s
    "Song: #{@name} - #{@artist} (#{@duration})"
  end
end

a_song = Song.new( 'Andromeda', 'Gorillaz', '3:17' )
puts a_song.to_s

# Inheritance
class KaraokeSong < Song # KaraokeSong is a subclass of Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
    super + " [#{@lyrics}]"
  end
end

a_karaoke_song = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts a_karaoke_song.to_s
