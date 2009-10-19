require File.dirname(__FILE__) + "/spec_helper"

describe IterationList, "when listing sensei iterations in a git repo containing appropriate tags" do
  
  before do
    Dir.mkdir '/tmp/foo'
    Dir.chdir '/tmp/foo'
    `git init`
    `touch first.txt`
    `git add .`
    `git commit -am "Initial commit"`
    `git tag iteration-1`
    `touch test.txt`
    `git add test.txt`
    `git commit -m "Added test file"`
    `git tag not-an-iteration`
    `touch test2.txt`
    `git add test2.txt`
    `git commit -m "Added test2 file"`
    `git tag iteration-2`
  end
  
  after do
    `rm -rf /tmp/foo`
  end
  
  it "should count the number of iterations, ignoring tags that are not iterations" do
    IterationList.new("/tmp/foo").iterations.should == 2
  end
  
end