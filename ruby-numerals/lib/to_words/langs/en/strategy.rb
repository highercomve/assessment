require 'to_words/strategy_base'

module ToWords
  module Langs
    module En
      class Strategy < ToWords::StrategyBase
        LANG = :en
        private
        def unit (number)
          units = %w[one two tree four five six seven eight nine]
          number > 0 ? units[number - 1] : ""
        end

        def teen (number, rest) 
          return "" if number == 0

          if number == 1
            teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
            teens[rest]
          else 
            teens = %w[twenty thirty forty fifty sixty seventy eighty ninety]
            "#{teens[number - 2]} #{unit(rest)}" 
          end
        end

        def hundred (number, rest)
          number > 0 ? "#{unit(number)} hundred" : ""
        end

        def thousand (number, rest)
          number > 0 ? "#{unit(number)} thousand" : ""
        end
      end
    end
  end
end
