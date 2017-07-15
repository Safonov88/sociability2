class Calculate
  attr_reader :summ

  def initialize
    @summ = 0
  end

  def counting(answer)
    case answer
    when 1
      @summ = @summ + 1
    when 2
      @summ = @summ + 2
    end
  end
end
