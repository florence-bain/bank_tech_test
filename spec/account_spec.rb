require './lib/account'
require './lib/transactions'


describe Account do
  subject(:account) { Account.new(transactions, statement) }
  let(:transactions) { double("transactions")}
  let(:statement) { double("statement")}

  describe '#transactions' do 
    it 'should create a instance of transactions' do
      expect(account.transactions).to eq transactions
    end 
  end 

  describe '#deposit' do
    it 'transactions can use deposit method' do
      allow(transactions).to receive(:deposit)
      account.deposit(500)
      expect(transactions).to have_received(:deposit)
    end
  end

  describe '#withdraw' do
    it 'transactions can use withdraw method' do
      allow(transactions).to receive(:deposit)
      allow(transactions).to receive(:withdraw)
      account.deposit(500)
      account.withdraw(200)
      expect(transactions).to have_received(:withdraw)
    end
  end

  describe '#print_statement' do
    before do
      allow(statement).to receive(:format)
      allow(transactions).to receive(:transaction)
    end

    it 'print should receive the pretty print method' do
      account.print_statement
      expect(statement).to have_received(:format)
    end
  end 
end

