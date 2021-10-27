class Transactions

  attr_reader :balance, :credit, :debit, :transaction

  def initialize(balance = 0, credit = 0, debit = 0, transaction = [])
    @balance = balance
    @credit = credit
    @debit = debit
    @transaction = transaction
  end 
  
  def deposit(funds)
    @balance += funds
  end

  def withdraw(funds)
     @balance >= funds
      @credit = format('%.2f', funds.to_s)
      @debit = ''
      @balance -= funds
      return format('%.2f', @balance)
  end
end 
