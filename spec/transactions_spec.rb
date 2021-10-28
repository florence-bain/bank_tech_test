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

    context 'so the user can not go overdrawn' do
      it 'should raise an error if the withdrawal is more than the balance' do
        expect { transactions.withdraw(1000) }.to raise_error "Insufficient funds"
      end
    end

    describe '#transactions' do
    context 'so transactions history is correct' do
      it 'should be initialized with an empty array' do
        expect(transactions.transactions).to eq []
      end
    end

    context 'so the transaction history can be recorded' do
      it 'deposit transaction information should be displayed' do
        transactions.deposit(500)
        expect(transactions.transactions.length).to eq 1
      end

      it 'withdraw transaction information should be displayed with other records' do
        transactions.deposit(500)
        transactions.withdraw(100)
        expect(transactions.transactions.length).to eq 2
      end
    end
  end
end 