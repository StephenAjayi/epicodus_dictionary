class Words
  @@words = []
  attr_reader(:word_name)
  define_method(:initialize) do |attributes|
    @word_name = attributes.fetch(:word_name)
    @word_definitions = []
  end
  define_method(:save) do
  @@words.push(self)
  end
  define_singleton_method(:all) do
  @@words
  end
  define_singleton_method(:clear) do 
  @@words = []
end
  define_method(:word_definitions) do 
    @word_definitions
  end
  define_method(:add_definition) do |definition|
    @word_definitions.push(definition)
  end
end
  


