require 'account'

describe Account do
  let(:account) { Account.new }

  it "starts account at 0" do
    expect(account.new_balance).to eq(0)
    end 

  it 'shows the balance of the account' do
    expect(account.balance).to eq(0)
    end 

    describe '#deposit' do
      it 'allows funds to be added to the account' do
        expect(account.deposit(20)).to eq(20)
      end 

      it 'allows other funds to be deposisted' do
        expect(account.deposit(3000)).to eq(3000)
       end 
    end 

end