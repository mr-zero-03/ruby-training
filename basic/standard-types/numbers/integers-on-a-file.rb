file = File.open( "#{__dir__}/nums.txt" )

puts "As String"
file.each do | line |
  values = line.split
  print values[ 0 ] + values[ 1 ], " "
end

file.close
puts "\n"

file = File.open( "#{__dir__}/nums.txt" )

puts "As Integers"
file.each do | line |
  values = line.split
  print values[ 0 ].to_i + values[ 1 ].to_i, " "
end

file.close
puts "\n"
