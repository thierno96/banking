#account_spec.rb

require 'rspec'
require '../lib/account.rb'

describe Account do

  it "should initially have a balance of zero"  do
    account = Account.new
    account.balance.should == 0.0
  end
end