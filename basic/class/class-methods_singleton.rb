class Logger

  private_class_method :new

  @@logger = nil

  def Logger.create
    if !@@logger
      new
    end
    @@logger
  end
end

logger_object_id = Logger.create.object_id

puts 'The class method "new" is now private, use the method "create"'
puts "The object was created with the method 'create' The logger object ID is = #{logger_object_id}"
puts 'Calling the method "new". It will throw an error and end the program'
Logger.new()
puts 'Program ended'
