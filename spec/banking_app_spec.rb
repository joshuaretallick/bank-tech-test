require 'banking_app'

describe Bank do

  it "created an instance of Bank" do
    expect(subject).to be_an_instance_of Bank
  end

  it "initialized bank has an empty statement array" do
    expect(subject.statement).to be_empty
  end

end
