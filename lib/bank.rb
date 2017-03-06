class Bank

  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    raise "You cannot deposit 0 or a negative amount." if amount <= 0
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
