require_relative 'account'

class Statement

  def initialize
    @time = Time.now
  end

  def time
    @time = Time.now.strftime('%d/%m/%Y')
  end

  def display(transaction)
    puts 'time        || credit || debit || balance'
    transaction.join(' || ')
  end 

end 