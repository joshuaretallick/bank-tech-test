class Transaction

  attr_reader :amount, :timestamp

  def initialize
    @amount = amount
    @timestamp = Time.now.getutc
  end

end
