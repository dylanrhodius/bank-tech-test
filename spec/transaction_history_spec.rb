require 'transaction_history'

describe TransactionHistory do
  let(:transaction_history) { described_class.new }

  it 'is created with an empty transactions array' do
    expect(transaction_history.transactions).to eq []
  end

end
