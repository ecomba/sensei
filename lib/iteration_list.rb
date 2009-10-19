class IterationList
  def initialize(path)
    @path = path
  end
  
  def iterations
    GitTagLister.new(@path).tags.select do |tag|
      /iteration-\d*/.match(tag)
    end.size
  end 
end