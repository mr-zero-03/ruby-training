puts "--- Creating the File.open_and_process class method ---"
class File
  def File.open_and_process( *args )
    file = File.open( *args )
    yield file
    file.close
  end
end

File.open_and_process( "#{__dir__}/text.txt", "r" ) do | a_file |
  print while a_file.gets
end

puts "\n\n--- Modifying the File.open class method ---"
class File

  def File.open( *args )
    file = File.new( *args )

    if block_given?
      yield file
      file.close
      file = nil
    end

    return file
  end

end

puts "\n - Sending Associated Block"
File.open( "#{__dir__}/text.txt" ) do | a_file |
  print while a_file.gets
end

puts "\n - Creating the File Object"
a_file = File.open( "#{__dir__}/text.txt" )
a_file.each { | line | puts line }
a_file.close
