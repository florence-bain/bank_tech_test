require 'transactions'

describe Transactions do

  let(:transaction) { Transactions.new }

  it 'should have a default balance of 0' do
    expect(transaction.balance).to eq(0)
  end 

    describe '#deposit' do
      it 'should deposit funds to the account and increase the balance' do
        transaction.deposit(500)
        expect(transaction.balance).to eq(500)
      end 

      it 'should allow multiple deposits to the account' do
        transaction.deposit(500)
        transaction.deposit(2500)
        expect(transaction.balance).to eq(3000)
      end 
    end

    describe '#withdraw' do
      it 'can withdraw from the balance' do
        transaction.deposit(500)
        transaction.withdraw(20)
        expect(transaction.balance).to eq(480)
      end
    end 
end 