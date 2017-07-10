require_relative "lib/questions.rb"
require_relative "lib/result.rb"
require_relative "lib/calculate.rb"

quest = Questions.new
calculation = Calculate.new
result = Result.new

quest.size.times do |i|
  puts quest.quest(i)
  puts "Выберите вариант ответа:"
  puts "0 - нет, 1 - иногда, 2 - да"
  calculation.calculation(STDIN.gets.to_i)
end

puts result.result(calculation.summ)
