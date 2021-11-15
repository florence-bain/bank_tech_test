require 'statement'

describe Statement do
  subject(:statement) { Statement.new }
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  let(:transactions) do
    [{ date: '28/10/21', credit: '%.2f' % 500, debit: '------', balance: '%.2f' % 500 },
     { date: '28/10/21', credit: '------', debit: '%.2f' % 500, balance: '%.2f' % 0 }]
  end

  it 'returns the transactions date' do
    expect(statement.date).to eq date
  end

  describe '#format' do
    let(:format) do
      "  date    ||   credit  ||   debit  || balance\n" \
      " 28/10/21 || ------    || 500.00   || 0.00\n" \
      " 28/10/21 || 500.00    || ------   || 500.00\n"
    end
    it 'should print the transactions' do
      expect { statement.format(transactions) }.to output(format).to_stdout
    end
  end
end
