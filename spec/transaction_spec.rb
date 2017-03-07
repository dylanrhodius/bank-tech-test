require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(credit: 0, debit: 100, balance: 100) }

  describe '#transaction' do
    it 'initialises with a credit amount' do
      expect(transaction.details[:credit]).to eq 0
    end
    it 'initialises with a debit amount' do
      expect(transaction.details[:debit]).to eq 100
    end
    it 'initialises with a date' do
      expect(transaction.details[:date]).to eq Time.new.strftime('%d/%m/%Y')
    end
    it 'initialises with a balance' do
      expect(transaction.details[:balance]).to eq 100
    end
  end

end
