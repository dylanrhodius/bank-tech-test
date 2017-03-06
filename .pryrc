require './lib/bank'

bank = Bank.new
bank.deposit(10)
bank.deposit(20)
bank.transaction_history.display
