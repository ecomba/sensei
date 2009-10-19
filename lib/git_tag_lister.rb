class GitTagLister
  def initialize(path)
    @path = path
  end
  
  def tags
    old_pwd = Dir.pwd
    Dir.chdir @path
    tags = `git tag`.split "\n"
    Dir.chdir old_pwd
    tags
  end
end