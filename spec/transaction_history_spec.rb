require 'transaction_history'

describe TransactionHistory do
  let(:transaction_history) { described_class.new }

  it 'is created with an empty transactions array' do
    expect(transaction_history.transactions).to eq []
  end

  describe '#display' do
    xit 'prints out the transactions array' do
      expect(transaction_history.display).to eq """
      date       || credit || debit   || balance
      #{Time.new.strftime('%d/%m/%Y')} || || 10  || 10

      """
    end
  end

end
