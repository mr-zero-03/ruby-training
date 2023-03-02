class Song
  @@plays = 0

  attr_accessor :name, :artist, :duration

  def initialize( name, artist, duration )
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def to_s
    "Song: #{@name} - #{@artist} (#{@duration})"
  end

  def durationInMinutes # Convert from Seconds to Minutes
    @duration / 60.0   # force floating point with x.0
  end

  def durationInMinutes=( value )
    @duration = ( value * 60 ).to_i # Convert from Minutes to Seconds and saves
  end

  def play
    @plays += 1
    @@plays += 1
    "This song '#{@name}' has been played: #{@plays} time(s). Total plays: #{@@plays}."
  end

end
