require File.dirname(__FILE__) + "/spec_helper"

describe GitTagLister, "when listing tags in a git repo containing tags" do
  
  before do
    Dir.mkdir '/tmp/foo'
    Dir.chdir '/tmp/foo'
    `git init`
    `touch first.txt`
    `git add .`
    `git commit -am "Initial commit"`
    `git tag tag-1`
    `touch test.txt`
    `git add test.txt`
    `git commit -m "Added test file"`
    `git tag otherOne`
    Dir.chdir '/home'
    @tags = GitTagLister.new("/tmp/foo").tags
  end
  
  after do
    `rm -rf /tmp/foo`
  end
  
  it "should list the available tags" do
    @tags.should == ["otherOne", "tag-1"]
  end
  
  it "should put the pwd back when it's done" do
    Dir.pwd.should == '/home'
  end
  
end