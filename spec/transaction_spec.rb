require 'transaction'

describe Transaction do

  it "created an instance of Transaction" do
    transaction = described_class.new(100, 0, 100)
    expect(transaction).to be_an_instance_of Transaction
  end

end
