require 'statement'

describe Statement do
  let(:statement) {Statement.new}


  it 'returns the transaction date' do
    time = Time.now.strftime('%d/%m/%Y')
    expect(statement.time).to eq time
  end 

  describe '#display' do
    it 'displays statement' do
      time = Time.now.strftime('%d/%m/%Y')
      credit = '100'
      debit = debit
      balance = '100'
      transaction = [time, credit, debit, balance]

      expect(statement.display(transaction)).to eq time + ' || 100 ||  || 100'
    end 
  end 
end
# expect(statement.display(transaction)).to eq time + ' || ' + credit + ' || ' + balance