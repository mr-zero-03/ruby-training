def fibonacci_up_to( max )
  i1, i2 = 1, 1 # parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2 # parallel assignment
  end
end

fibonacci_up_to( 1000 ) { | x | print x, " " }
