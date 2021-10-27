require_relative 'statement'
require_relative 'transactions'

class Account

  attr_reader :transactions, :statement

  def initialize(transactions, statement)
    @transactions = transactions
    @statement = statement
  end 
  
  def deposit(funds)
    transactions.deposit(funds)
  end

  def withdraw(funds)
    transactions.withdraw(funds)
  end

  def print_statement
    statement.format(transactions.transactions)
  end 

end 