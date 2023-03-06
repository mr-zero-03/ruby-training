class Array
  def find_index
    for i in 0...size
      return i if yield( self[ i ] )
    end
  end

  def find
    for i in 0...size
      value = self[ i ]
      return value if yield( value )
    end
  end
end

array = [ 1, 2, 3, 4 ]
puts array.find { | x | x == 3 } # Returns 3
puts array.find_index { | x | x == 3 } # Returns 2
