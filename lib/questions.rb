class Questions
  def initialize
    file = File.new("question.txt", "r: UTF-8")
    @quests = file.readlines
    file.close
  end

  def quest(id)
    @quests[id]
  end

  def size
    @quests.size
  end
end
