require './lib/account'
require './lib/transactions'


describe Account do
  subject(:account) { Account.new(transactions) }
  let(:transactions) { double("transactions")}


  describe '#transactions' do 
    it 'should create a instance of transactions' do
      expect(account.transactions).to eq transactions
    end 
end 
end

