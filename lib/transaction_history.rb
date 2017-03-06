class TransactionHistory

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def display
    print_out = "date       ||credit||debit||balance"
    transactions.each do |element|
      print_out << "\n" + element[:date]
      print_out << " ||" + element[:value].to_s if element[:type].to_s == "credit"
      print_out << " ||" + " ||" + element[:value].to_s if element[:type].to_s == "debit"
      print_out << " ||" + element[:balance].to_s
    end
    print_out
  end
end
