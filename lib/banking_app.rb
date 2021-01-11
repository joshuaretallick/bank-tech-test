class Bank

  attr_reader :statement, :balance

  def initialize
    @statement = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

end
