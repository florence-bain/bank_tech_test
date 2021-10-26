require 'account'

describe Account do
  let(:account) { Account.new }

  it "starts account at 0" do
    expect(account.new_balance).to eq(0)
    end 
  
  describe '#deposit' do
    it 'allows funds to be added to the account' do
      expect(account.deposit(20)).to eq(20)
    end 
  end 

end