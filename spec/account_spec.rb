require 'account'

describe Account do
  it "starts account at 0" do
    account = Account.new
    expect(account.new_balance).to eq(0)
    end 

end