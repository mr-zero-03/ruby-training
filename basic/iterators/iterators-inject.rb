class Array
  def inject( num )
    each { | value | num = yield( num, value ) }
    num
  end

  def sum
    inject( 0 ) { | num, value | num + value }
  end

  def multiply
    inject( 1 ) { | num, value | num * value }
  end
end

array = [ 1, 2, 3, 4, 5 ]
puts array.sum # Prints 15
puts array.multiply # Prints 120
