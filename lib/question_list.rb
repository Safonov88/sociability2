class QuestionList
  def initialize(filename)
    file = File.new(filename, "r:UTF-8")
    @quests = file.readlines
    file.close
  end

  def question(id)
    @quests[id]
  end

  def size
    @quests.size
  end
end
