require 'banking_app'

describe Bank do

  before(:each) do
    allow(Time).to receive(:now).and_return(Time.parse("12/01/2021"))
  end

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

    it "stores the transaction history in the statement" do
      expect{ subject.deposit(100) }.to change { subject.transactions.length }.by 1
    end

  end

  describe "#withdrawal" do
    it "allows the user to withdraw money from the bank account" do
      subject.withdrawal(100)
      expect(subject.balance).to eq -100
    end

    it "stores the transaction history in the statement" do
      expect{ subject.withdrawal(100) }.to change { subject.transactions.length }.by 1
    end

  end

  describe "#statement" do
    it "displays the statement in a readable format when called" do
      subject.deposit(100)
      expect { subject.statement }.to output("date || credit || debit || balance\n12/01/2021 || 100.00 || 0.00 || 100.00\n").to_stdout
    end

  end


end
