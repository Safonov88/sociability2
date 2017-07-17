require_relative "lib/question_list"
require_relative "methods"

question_list = QuestionList.new("question.txt")
amount = 0

questionlist.size.times do |i|
  puts questionlist.question(i)
  puts "Выберите вариант ответа:"
  puts "0 - нет, 1 - иногда, 2 - да"
  amount += STDIN.gets.to_i
end

puts total(amount, "result.txt")
