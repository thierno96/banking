# account.rb

class Account
  attr_reader :balance
  def initialize(starting_balance)
    @balance = starting_balance
  end

end