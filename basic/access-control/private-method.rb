class Accounts
  def initialize( balance )
    @balance = balance
    @currencies = {
      'usd' => 4774.70,
      'eur' => 5050.61
    }
  end

  attr_reader :balance
  private :balance

  private

    def calculate_currency( value, currency_value )
      value / currency_value
    end

  public

    def convert_from_cop_to( currency )
      currency = currency.downcase
      calculate_currency( @balance, @currencies[ currency ] ) if @currencies[ currency ] != nil
    end

end

account = Accounts.new( 4774.70 )
puts "4774.70 COP are: #{account.convert_from_cop_to( 'USD' )} USD"
account = Accounts.new( 5050.61 )
puts "5050.61 COP are: #{account.convert_from_cop_to( 'EUR' )} EUR"
