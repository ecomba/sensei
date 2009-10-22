class GitTagLister
  def initialize(path)
    @path = path
  end
  
  def tags
    Dir.chdir(@path) do
      `git tag`.split "\n"
    end
  end
end