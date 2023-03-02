def three_times
  yield
  yield
  yield
end

three_times { puts "Hello" }

def iterator
  puts "\nHello"
  yield
  puts "World!"
end

iterator { puts "Hola Mundo!" }
