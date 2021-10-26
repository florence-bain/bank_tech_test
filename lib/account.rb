class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end 

  def new_balance
    @balance
  end
  
  def deposit(funds)
    @balance += funds
  end

  def withdraw(funds)
    @balance -= funds
  end
end 