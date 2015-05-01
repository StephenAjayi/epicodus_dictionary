require('rspec')
require('words')
require('definitions')

describe(Words) do
  before() do 
    Words.clear()
  end
  describe('#word_name') do 
    it('ascribes a name to an instance of Word class') do 
      test_word = Words.new({:word_name => "orange"})
      expect(test_word.word_name()).to(eq("orange"))
    end
  end
  describe('#save') do 
    it('pushes an istance of word class to an array') do
      test_word = Words.new({:word_name => "Run"}) 
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end
  describe('.all') do 
    it('displays all the words that have been saved') do
      expect(Words.all()).to(eq([]))
    end
  end
  describe('.clear') do 
    it('deletes all saved words') do 
      expect(Words.clear()).to(eq([]))
    end
  end
  describe('# defined_words') do 
    it('initially retuns an empty array of definoitions for a new word') do 
      test_word = Words.new({:word_name => "Doe"})
      expect(test_word.word_definitions()).to(eq([]))
    end
  end
end
    
  
#   describe('#add_definition') do 
#     it('adds a new definition to a word') do
#       test_word = Words.new({:word_name => "Doe"})
#       test_definition = Definitions.new({:definition => "A baby deer"})
#       test_word.add_definition(test_definition)
#       expect(test_word.defined_words()).to(eq(test_definition))
# end

  
  