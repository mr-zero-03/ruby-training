class VU
  include Comparable

  attr :volume

  def initialize( volume ) # 0..9
    @volume = ( volume > 9 ) ? 9 : volume
  end

  def inspect
    '#' * @volume
  end

  # Support for ranges
  def <=>( other )
    self.volume <=> other.volume
  end

  def succ
    raise( IndexError, "Volume too big" ) if @volume >= 9
    VU.new( @volume.succ )
  end
end

range = VU.new( 0 )..VU.new( 4 )
range.to_a.each { | x | puts x.inspect } # [, #, ##, ###, ####]
puts range.include?( VU.new( 5 ) ) # false
puts range.include?( VU.new( 1 ) ) # true
