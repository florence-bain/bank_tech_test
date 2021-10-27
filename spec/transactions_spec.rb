require 'transactions'

describe Transactions do

  subject(:transactions) { described_class.new }
  time = Time.now.strftime('%d/%m/%Y')

  it 'should have a default balance of 0' do
    expect(transactions.balance).to eq(0)
  end 

    describe '#deposit' do
      it 'should deposit funds to the account and increase the balance' do
        transactions.deposit(500)
        expect(transactions.balance).to eq(500)
      end 

      it 'should allow multiple deposits to the account' do
        transactions.deposit(500)
        transactions.deposit(2500)
        expect(transactions.balance).to eq(3000)
      end 
    end

    describe '#withdraw' do
      it 'can withdraw from the balance' do
        transactions.deposit(500)
        transactions.withdraw(20)
        expect(transactions.balance).to eq(480)
      end
    end 
end 