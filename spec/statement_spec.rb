require 'statement'

describe Statement do

  subject(:statement) {Statement.new}
  let(:time) {Time.now.strftime('%d/%m/%Y')}

  it 'returns the transaction date' do
    expect(statement.time).to eq time
  end 

  describe '#display' do
    it 'displays statement' do
      credit = '#{credit}'
      debit = debit
      balance = '#{balance}'
      transaction = [time, credit, debit, balance]

      expect(statement.display(transaction)).to eq time + ' || #{credit} ||  || #{balance}'
    end 
  end 
end
