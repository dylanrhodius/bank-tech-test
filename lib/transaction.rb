class Transaction

 attr_reader :details

 def initialize(credit: nil, debit: nil,  balance:)
   @details = { date: Time.new.strftime('%d/%m/%Y'),
     credit: credit,
     debit: debit,
     balance: balance }
 end
end
