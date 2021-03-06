class Definitions
  @@definitions = []
  attr_reader(:definition) 
  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
  end
  define_singleton_method(:all) do 
    @@definitions
  end
  define_method(:save) do 
    @@definitions.push(self)
  end
  define_singleton_method(:clear) do
    @@definitions = []
  end
end