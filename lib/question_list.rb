class QuestionList
  def initialize
    file = File.new("question.txt", "r: UTF-8")
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
