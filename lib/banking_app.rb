require_relative 'transaction'

class Bank

  attr_reader :transactions, :balance, :timestamp

  def initialize
    @transactions = []
    @balance = 0
    @timestamp = Time.now.getutc
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount)
  end

  def withdrawal(amount)
    @balance -= amount
    @transactions << Transaction.new(amount)
  end

  def statement
    @transactions.map do |t|
      type = t.amount > 0 ? "credit" : "debit"
      "#{t.timestamp} - #{type} - #{t.amount}"
    end
  end

end
