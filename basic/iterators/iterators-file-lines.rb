file = File.open( "#{__dir__}/text.txt" )
file.each do | line |
  print line
end
file.close
