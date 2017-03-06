require 'bank'

describe Bank do
    let(:bank) { described_class.new }

    it 'is created with a balance of zero by default' do
      expect(bank.balance).to eq 0
    end

    it 'instantiates a transaction_history class' do
      expect(bank).to respond_to(:transaction_history)
    end

  describe '#deposit' do
    it 'updates balance when depositing a specific amount' do
      expect { bank.deposit 10 }.to change { bank.balance }.by 10
    end

    it 'raises an error if trying to deposit £0 or less' do
      message = "You cannot deposit £0 or a negative amount."
      expect { bank.deposit 0 }.to raise_error message
    end

    it 'pushes a new deposit entry into the transactions array' do
      bank.deposit(10)
      expect(bank.transaction_history.transactions).to include ( {:type=>:debit, :value=>10, :date=>"#{Time.new.strftime('%d/%m/%Y')}"} )
    end
  end

  describe '#withdraw' do
    it 'updates balance when withdrawing a specific amount' do
      bank.deposit 50
      expect { bank.withdraw 50 }.to change { bank.balance }.by -50
    end

    it 'raises an error if trying to withdraw more than the balance' do
      message = "You cannot withdraw a higher amount than your current balance."
      expect { bank.withdraw 2 }.to raise_error message
    end

    it 'pushes a new withdrawal entry into the transactions array' do
      bank.deposit(20)
      bank.withdraw(10)
      expect(bank.transaction_history.transactions).to include ( {:type=>:credit, :value=>10, :date=> "#{Time.new.strftime('%d/%m/%Y')}"} )
    end
  end





end
