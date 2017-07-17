class ResultDecider
  def initialize(file_name)
    file = File.new(file_name, "r:UTF-8")
    @results = file.readlines
    file.close
  end

  def total(answer)
    case answer
    when 0..3
      @results[6].to_s
    when 4..8
      @results[5].to_s
    when 9..13
      @results[4].to_s
    when 14..18
      @results[3].to_s
    when 19..24
      @results[2].to_s
    when 25..29
      @results[1].to_s
    when 30..32
      @results[0].to_s
    end
  end
end
