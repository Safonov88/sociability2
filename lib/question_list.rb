class QuestionList

  def initialize(file_name)
    file = File.new(file_name, "r:UTF-8")
    @quests = file.readlines
    file.close
  end

  def quests(id)
    @quests[id]
  end

  def size
    @quests.size
  end
end
