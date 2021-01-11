class Transaction

  attr_reader :amount, :timestamp

  def initialize
    @amount = amount.to_f
    @timestamp = Time.now.getutc
  end

  def to_s
    type = @amount > 0 ? "credit" : "debit"
    "#{@timestamp} - #{type} - #{@amount}"
  end 

end
