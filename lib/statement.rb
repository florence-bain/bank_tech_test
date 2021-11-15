require_relative 'account'

class Statement
  def initialize
    @date = Time.now
  end

  def date
    @date = Time.now.strftime('%d/%m/%Y')
  end

  def format(transactions)
    puts '  date    ||   credit  ||   debit  || balance'
    transactions.join(' || ')
    transactions.reverse_each do |transactions|
      print " #{transactions[:date]} ||",
            " #{transactions[:credit]}    ||",
            " #{transactions[:debit]}   ||",
            " #{transactions[:balance]}\n"
    end
  end
end
