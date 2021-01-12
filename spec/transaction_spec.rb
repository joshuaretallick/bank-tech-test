require 'transaction'

describe Transaction do

  it "created an instance of Transaction" do
    expect(subject).to be_an_instance_of Transaction
  end

  xit "knows the time" do
    expect(subject.timestamp).to be_an_instance_of Time
  end

end
