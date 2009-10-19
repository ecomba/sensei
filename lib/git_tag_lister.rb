class GitTagLister
  def initialize(path)
    @path = path
  end
  
  def tags
    `git tag`.split "\n"
  end
end