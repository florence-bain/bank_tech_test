class Transactions
  attr_reader :balance, :credit, :debit, :transactions

  def initialize(balance = 0, credit = 0, debit = 0, transactions = [])
    @balance = balance
    @credit = credit
    @debit = debit
    @transactions = transactions
  end

  def deposit(funds)
    balance_plus(funds)
    record_deposit(funds)
  end

  def withdraw(funds)
    raise 'Insufficient funds' if @balance < funds

    balance_subtract(funds)
    record_withdraw(funds)
  end

  private

  def record_deposit(funds)
    transaction = {
      time: Time.now.strftime('%d/%m/%y'),
      credit: '%.2f' % funds,
      debit: '------',
      balance: '%.2f' % @balance
    }

    @transactions.push(transaction)
  end

  def record_withdraw(funds)
    transaction = {
      time: Time.now.strftime('%d/%m/%y'),
      credit: '------',
      debit: '%.2f' % funds,
      balance: '%.2f' % @balance
    }
    @transactions.push(transaction)
  end

  def balance_plus(funds)
    @balance += funds
  end

  def balance_subtract(funds)
    @balance -= funds
  end
end
