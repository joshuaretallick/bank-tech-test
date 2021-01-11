require 'banking_app'

describe Bank do

  it "created an instance of Bank" do
    expect(subject).to be_an_instance_of Bank
  end

  it "initialized bank has an empty statement array" do
    expect(subject.transactions).to be_empty
  end

  it "initialized bank has a balance of 0 by default" do
    expect(subject.balance).to eq 0
  end

  describe "#deposit" do
    it "allows the user to add money to bank account" do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

  end

  describe "#withdrawal" do
    it "allows the user to withdraw money from the bank account" do
      subject.withdrawal(100)
      expect(subject.balance).to eq -100
    end

  end

  it "stores the transaction history in the statement" do
    expect{ subject.deposit(100) }.to change { subject.transactions.length }.by 1
  end

end
