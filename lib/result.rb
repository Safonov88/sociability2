class Result
  def initialize
    file = File.new("result.txt", "r:UTF-8")
    @answers = file.readlines
    file.close
  end

  def total(answer)
    case answer
    when 0..3
      @answers[6].to_s
    when 4..8
      @answers[5].to_s
    when 9..13
      @answers[4].to_s
    when 14..18
      @answers[3].to_s
    when 19..24
      @answers[2].to_s
    when 25..29
      @answers[1].to_s
    when 30..32
      @answers[0].to_s
    end
  end
end
