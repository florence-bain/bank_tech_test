require_relative 'statement'
require_relative 'transactions'

class Account

  attr_reader :balance, :credit, :debit, :transactions

  def initialize(transactions)
    @transactions = transactions
  end 
  
  def deposit(funds)
    transactions.deposit(funds)
  end

  def withdraw(funds)
    transactions.withdraw(funds)
  end

end 