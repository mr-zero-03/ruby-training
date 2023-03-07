class Array
  def multiple_of( divisor )
    self.each { | num | yield num if num % divisor == 0 }
  end
end

[ 1, 2, 3, 4, 5, 6 ].multiple_of( 2 ) { | multiple_number | puts multiple_number }
