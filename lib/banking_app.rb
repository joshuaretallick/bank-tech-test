require_relative 'transaction'

class Bank

  attr_reader :transactions, :balance
  HEADING = 'date || credit || debit || balance'

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new(amount, 0, @balance)
    @transactions << deposit
  end

  def withdrawal(amount)
    @balance -= amount
    @transactions << Transaction.new(amount, 0, @balance)
  end

  # def statement
  #   puts HEADING
  #   @transactions.map do |t|
  #     type = t.amount > 0 ? "credit" : "debit"
  #     "#{t.timestamp} || #{type} || #{t.amount} || balance #{@balance.to_f}"
  #   end
  # end

end
