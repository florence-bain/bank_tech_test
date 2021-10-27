require 'account'

describe Account do
  let(:account) { Account.new }


  it 'should have a default balance of 0' do
    expect(account.balance).to eq(0)
  end 

    describe '#deposit' do
      it 'should deposit funds to the account and increase the balance' do
        account.deposit(500)
        expect(account.balance).to eq(500)
      end 

      it 'should allow multiple deposits to the account' do
        account.deposit(500)
        account.deposit(2500)
        expect(account.balance).to eq(3000)
      end 
    end

    describe '#withdraw' do
      it 'can withdraw from the balance' do
        account.deposit(500)
        account.withdraw(20)
        expect(account.balance).to eq(480)
      end
    end 
end

