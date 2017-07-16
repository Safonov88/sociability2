def total(answer, filename)
  file = File.new(filename, "r:UTF-8")
  result = file.readlines
  file.close

  case answer
  when 0..3
    result[6].to_s
  when 4..8
    result[5].to_s
  when 9..13
    result[4].to_s
  when 14..18
    result[3].to_s
  when 19..24
    result[2].to_s
  when 25..29
    result[1].to_s
  when 30..32
    result[0].to_s
  end
end
