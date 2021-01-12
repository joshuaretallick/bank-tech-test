class Transaction

  attr_reader :amount, :timestamp, :credit, :debit

  def initialize(credit, debit, balance)
    # @amount = amount.to_f
    @credit = credit
    @debit = debit
    @timestamp = Time.now.strftime('%d/%m/%Y')
  end

end
