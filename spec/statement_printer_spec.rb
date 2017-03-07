require 'statement_printer'

describe StatementPrinter do
 subject(:statement_printer) { described_class.new }
 let(:transaction_history) {[{date:"07/03/2017", credit: 0, debit: 100, balance: 100}]}

 describe '#display_statement' do
   it 'should format string to be outputted correctly' do
     expect{subject.display_statement(transaction_history)}.to output("\"||        Date        ||       Credit       ||       Debit        ||      Balance       ||\"\n\"||     07/03/2017     ||         0          ||        100         ||        100         ||\"\n").to_stdout
   end
 end
end
