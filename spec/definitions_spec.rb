require('rspec')
require('definitions')

describe(Definitions) do 
  describe('#definition') do 
    it('returns a definition') do
      test_definition = Definitions.new({:definition => "A baby deer"})
      expect(test_definition.definition()).to(eq("A baby deer"))
    end
  end
end