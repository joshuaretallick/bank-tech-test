class Transaction

  attr_reader :amount, :timestamp

  def initialize(amount = 0)
    @amount = amount.to_f
    @timestamp = Time.now.getutc
  end

end
