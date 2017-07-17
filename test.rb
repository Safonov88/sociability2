require_relative "lib/question_list"
require_relative "lib/result_decider"

question_list = QuestionList.new("data/question.txt")
decider = ResultDecider.new("data/result.txt")
amount = 0

question_list.size.times do |i|
  puts question_list.quests(i)
  puts "Выберите вариант ответа:"
  puts "0 - нет, 1 - иногда, 2 - да"
  amount += STDIN.gets.to_i
end

puts decider.total( amount)
