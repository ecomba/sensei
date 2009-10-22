class RealGit
  def do command
    system("git #{command}")
  end
end

class FakeGit
  def do command
  end
end