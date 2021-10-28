require 'statement'

describe Statement do

  subject(:statement) {Statement.new}
  let(:time) {Time.now.strftime('%d/%m/%Y')}

  let(:transactions) do
    [{ time: '28/10/21', credit: '%.2f' % 500, debit: '------', balance: '%.2f' % 500 },
    { time: '28/10/21', credit: '------', debit: '%.2f' % 500, balance: '%.2f' % 0 }]
  end

  it 'returns the transactions date' do
    expect(statement.time).to eq time
  end 

  describe '#format' do
  let(:format) do
    "  time    ||   credit  ||   debit  || balance\n" \
    " 28/10/21 || ------    || 500.00   || 0.00\n" \
    " 28/10/21 || 500.00    || ------   || 500.00\n"

  end
  it 'should print the transactions' do
    expect { statement.format(transactions) }.to output(format).to_stdout
  end

end
end
