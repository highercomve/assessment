require 'to_words/strategy_base'

module ToWords
  module Langs
    module En
      class Strategy < ToWords::StrategyBase
        LANG = :en
        private
        def unit (number)
          units = %w[~ one two tree four five six seven eight nine]
          units[number]
        end

        def teen (number)
          teen_unit, rest = number.divmod(10)
          return "#{unit(rest)}" if teen_unit == 0
          
          if teen_unit == 1
            teens = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
            teens[rest]
          else 
            teens = %w[~ twenty thirty forty fifty sixty seventy eighty ninety]
            unit_text = (unit(rest) != '~') ? "-#{unit(rest)}" : ""
            "#{teens[teen_unit - 1]}#{unit_text}" 
          end
        end

        def hundred (number)
          hundred_unit, rest = number.divmod(100)
          hundred_text = (hundred_unit > 0) ? "#{unit(hundred_unit)} hundred" : ""
          "#{hundred_text} #{teen(rest)}"
        end

        def mega (number, index)        
          megas = %w[thousand million billion trillion]
          megas_text = (number > 0) ? megas[index - 2] : ''
          "#{hundred(number)} #{megas_text}"
        end
      end
    end
  end
end
