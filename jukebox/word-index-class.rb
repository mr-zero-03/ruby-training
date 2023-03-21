class WordIndex
  def initialize
    @index = {}
  end
  def index( object, *phrases )
    phrases.each do | phrase |
      phrase.scan /\w[-\w']+/ do | word | # Extract each word
        word.downcase!

        if @index[ word ].nil?
          @index[ word ] = []
        else

          repeated = false

          @index[ word ].each do | the_object |
            if the_object == object
              repeated = true
              break
            end
          end

          next if repeated == true

        end

        @index[ word ].push( object )
        # puts "#{word}: #{@index[ word ]}"
      end
    end
  end
  def lookup( word )
    @index[ word.downcase ]
  end
end
