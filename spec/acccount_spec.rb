#account_spec.rb

require 'rspec'
require '../lib/account.rb'

describe Account do

  it "should initially have a balance of zero"  do
    account = Account.new(100.00)
    account.balance.should == 100.00
    account.deposit(200.00)
    account.balance.should >= 100.00
  end

  it "should have a balance equal to the starting balance" do
    starting_balance = 100.00
    subject = Account.new(starting_balance)
    subject.balance.should == starting_balance
  end

  it "should have a balance that is greater than the amount requested" do
    starting_balance = 100.00
    subject = Account.new(starting_balance)
    subject.deposit(200.00)
    subject.withdraw(50)
    subject.balance.should > 0
  end

  it "should have a balance greater than the amount to be transferred" do
    starting_balance = 500
    subject = Account.new(starting_balance)
    subject.transfer_to(Account.new(10), 500)
    subject.balance.should >= 0
    end

end