require_relative 'account'

class Statement
  def initialize
    @time = Time.now
  end

  def time
    @time = Time.now.strftime('%d/%m/%Y')
  end

  def format(transactions)
    puts '  time    ||   credit  ||   debit  || balance'
    transactions.join(' || ')
    transactions.reverse_each do |transactions|
      print " #{transactions[:time]} ||",
            " #{transactions[:credit]}    ||",
            " #{transactions[:debit]}   ||",
            " #{transactions[:balance]}\n"
    end
  end
end
