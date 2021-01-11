class Bank

  attr_reader :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @transactions << amount
  end

  def withdrawal(amount)
    @balance -= amount
    @transactions << amount
  end

end
