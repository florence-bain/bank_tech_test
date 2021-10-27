require 'statement'

describe Statement do
  let(:statement) {Statement.new}

  it 'returns the transaction date' do
    time = Time.now.strftime('%d/%m/%Y')
    expect(statement.time).to eq time
  end 
end 