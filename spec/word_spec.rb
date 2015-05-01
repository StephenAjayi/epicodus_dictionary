require('rspec')
require('words')

describe(Words) do
  describe('#word_name') do 
    it('ascribes a name to an instance of Word class') do 
      test_word = Words.new({:word_name => "orange"})
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end
end
  
  