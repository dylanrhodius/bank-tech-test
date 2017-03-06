require_relative 'transaction_history'

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
  end

  def withdraw(amount)
    raise "You cannot withdraw a higher amount than your current balance." if amount > @balance
    @balance -= amount
  end

end
