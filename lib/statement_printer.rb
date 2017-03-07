class StatementPrinter

  def display_statement(transaction_history)
    p "||" + ["Date", "Credit", "Debit", "Balance"].map!{|header| header.center(20)}.join("||") + "||"
    transaction_history.each.reverse_each do |transaction|
      p "||" + transaction.values.map!{ |element| element.to_s.center(20) }.join("||") + "||"
    end
  end

end
