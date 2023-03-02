require './song-class.rb'

class KaraokeSong < Song # KaraokeSong is a subclass of Song

  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + " [#{@lyrics}]"
  end

end

puts "KARAOKE (Inheritance from Song)"
a_karaoke_song = KaraokeSong.new( "My Way", "Sinatra", 225, "And now, the..." )
puts a_karaoke_song.to_s
