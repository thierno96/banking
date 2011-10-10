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

  #withdraw money from your account
  def withdraw(amount_to_withdraw)
     @balance -= amount_to_withdraw
  end

  #transfer

  def transfer_to (account2, value)
    account2.deposit(value)
    @balance -= value
  end

end
