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
    withdrawal = Transaction.new(0, amount, @balance)
    @transactions << withdrawal
  end

  def statement
    puts HEADING
    @transactions.reverse.each do |t|
      print "#{t.timestamp} || #{format(t.credit)} || #{format(t.debit)} || #{format(t.current_balance)}\n"
    end
  end

  private

  def format(amount)
   '%.2f' % amount
  end

end
