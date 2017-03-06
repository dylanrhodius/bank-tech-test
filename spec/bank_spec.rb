require 'bank'

describe Bank do
    let(:bank) { described_class.new }

    it 'is created with a balance of zero by default' do
      expect(bank.balance).to eq 0
    end

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'can deposit a specific amount' do
      bank.deposit 100
      expect(bank.balance).to eq 100
    end

    it 'updates balance' do
      expect { bank.deposit 10 }.to change { bank.balance }.by 10
    end

    it 'raises an error if trying to deposit 0 or less' do
      message = "You cannot deposit 0 or a negative amount."
      expect { bank.deposit 0 }.to raise_error message
    end



  end


end
