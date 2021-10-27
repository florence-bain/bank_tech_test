require 'statement'

describe Statement do

  subject(:statement) {Statement.new}
  let(:time) {Time.now.strftime('%d/%m/%Y')}

  it 'returns the transactions date' do
    expect(statement.time).to eq time
  end 

  describe '#display' do
    it 'displays statement' do
      credit = '#{credit}'
      debit = debit
      balance = '#{balance}'
      transactions = [time, credit, debit, balance]

      expect(statement.display(transactions)).to eq time + ' || #{credit} ||  || #{balance}'
    end 
  end 
end
