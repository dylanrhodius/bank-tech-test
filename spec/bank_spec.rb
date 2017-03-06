require 'bank'

describe Bank do
    let(:bank) { described_class.new }

    it 'is created with a balance of zero by default' do
      expect(bank.balance).to eq 0
    end

  describe '#deposit' do

    it 'updates balance when depositing a specific amount' do
      expect { bank.deposit 10 }.to change { bank.balance }.by 10
    end

    it 'raises an error if trying to deposit 0 or less' do
      message = "You cannot deposit 0 or a negative amount."
      expect { bank.deposit 0 }.to raise_error message
    end



  end


end
