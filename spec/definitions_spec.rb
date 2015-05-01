require('rspec')
require('definitions')

describe(Definitions) do 
  describe('#definition') do 
    it('returns a definition') do
      test_definition = Definitions.new({:definition => "A baby deer"})
      expect(test_definition.definition()).to(eq("A baby deer"))
    end
  end
  describe('.all') do 
    it('displays all the definitions in an array') do 
      expect(Definitions.all()).to(eq([]))
    end
  end
  describe('#save') do 
    it('saves definitions to an array') do 
      test_definition = Definitions.new({:definition => "A triangle with 2 equal sides"})
      test_definition.save()
      expect(Definitions.all()).to(eq([test_definition]))
    end
  end
  describe('#clear') do 
    it('del(ete all saved definitions from array') do 
      expect(Definitions.clear()).to(eq([]))
    end
  end
end