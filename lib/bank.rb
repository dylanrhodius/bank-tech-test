require_relative 'transaction_history'
require_relative 'transaction'

class Bank

  attr_reader :balance, :transaction_history

  DEFAULT_BALANCE = 0


  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = TransactionHistory.new
  end

  def deposit(amount)
    raise "You cannot deposit £0 or a negative amount." if amount <= 0
    @balance += amount
    @transaction_history.transactions << Transaction.new(credit: nil, debit: amount, balance: @balance)
  end

  def withdraw(amount)
    raise "You cannot withdraw a higher amount than your current balance." if amount > @balance
    @balance -= amount
    @transaction_history.transactions << Transaction.new(credit: amount, debit: nil, balance: @balance)
  end

end
