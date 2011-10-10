# account.rb

class Account
  attr_reader :balance
  def initialize(starting_balance)
    @balance = starting_balance
  end
  # add money to your bank account: deposit
  def deposit(money_to_deposit)
      @balance +=  money_to_deposit
  end

end