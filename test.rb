require_relative "lib/question_list.rb"
require_relative "lib/result.rb"
require_relative "lib/calculate.rb"

question = QuestionList.new
calculation = Calculate.new
result = Result.new

question.size.times do |i|
  puts question.question(i)
  puts "Выберите вариант ответа:"
  puts "0 - нет, 1 - иногда, 2 - да"
  calculation.counting(STDIN.gets.to_i)
end

puts result.total(calculation.summ)
