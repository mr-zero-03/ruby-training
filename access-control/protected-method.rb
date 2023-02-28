class Account
  def initialize( balance )
    @balance = balance
  end

  attr_reader :balance # accessor method 'balance'

  protected :balance # and make it protected

  def greater_balance_than(other)
    @balance > other.balance
  end
end

puts 'Account1 Balance: 2000'
account1 = Account.new( 2000 )
puts 'Account2 Balance: 25000'
account2 = Account.new( 25000 )

puts 'Is account1 balance greater than account2 balance?:'
puts account1.greater_balance_than( account2 ) # Returns false
puts 'Is account2 balance greater than account1 balance?:'
puts account2.greater_balance_than( account1 ) # Returns true

# puts account1.balance # It would throw the error: NoMethodError (protected method `balance' called)

# If the balance attribute was private this could not be done
# it would throw error
