module ToWords 
  class StrategyBase
    def initialize (params, last = false)
      @number, @index, @rest = params
      @is_last = last
    end

    def to_s
      case @index
      when 1
        unit @number
      when 2
        teen @number, @rest
      when 3
        hundred @number, @rest
      when 4 
        thousand @number, @rest 
      else
        mega @number, @index, @rest, @is_last
      end
    end

  end
end
