module ToWords 
  class StrategyBase
    def initialize (number, index)
      @number = number
      @index = index
    end

    def to_s
      if @index == 1 
        case @number.to_s.size
        when 1
          unit @number
        when 2
          teen @number
        when 3
          hundred @number
        end
      else
        mega @number, @index
      end
    end
  end
end
