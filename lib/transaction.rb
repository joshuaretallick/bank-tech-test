# frozen_string_literal: true

class Transaction
  attr_reader :timestamp, :credit, :debit, :current_balance

  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @current_balance = balance
    @timestamp = Time.now.strftime('%d/%m/%Y')
  end
end
