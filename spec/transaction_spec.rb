require 'transaction'

describe Transaction do

  it "created an instance of Transaction" do
    expect(subject).to be_an_instance_of Transaction
  end

  it "knows the time" do
    expect(subject.timestamp).to be_an_instance_of Time
  end

  describe "#to_s method" do
    it "Displays transaction in a readable format" do
      Time.stub(:now).and_return(Time.mktime(1970,1,1))
      expect(subject.to_s).to eq "1969-12-31 23:00:00 UTC - debit - 0.0"
    end
  end

end
