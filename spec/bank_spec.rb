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
      expect {bank.deposit 10 }.to change {bank.balance}.by 10
    end


  end


end
