class Words
  @@words = []
  attr_reader(:word_name)
  define_method(:initialize) do |attributes|
    @word_name = attributes.fetch(:word_name)
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
end

