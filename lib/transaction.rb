class Transaction

  attr_reader :timestamp, :credit, :debit

  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @timestamp = Time.now.strftime('%d/%m/%Y')
  end

end
