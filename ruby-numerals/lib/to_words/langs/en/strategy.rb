require 'to_words/strategy_base'
require 'to_words/langs/en/translations'

module ToWords
  module Langs
    module En
      class Strategy < ToWords::StrategyBase
        def initialize (number, index)
          super number, index
          @translations = ToWords::Langs::En::Translations.new()
        end

        private
        def unit (number)
          @translations.units[number]
        end

        def teen (number)
          teen_unit, rest = number.divmod(10)
          return "#{unit(rest)}" if teen_unit == 0
          
          if teen_unit == 1
            @translations.teen[rest]
          else 
            unit_text = (unit(rest) != '~') ? "-#{unit(rest)}" : ""
            "#{@translations.teens[teen_unit - 1]}#{unit_text}" 
          end
        end

        def hundred (number)
          hundred_unit, rest = number.divmod(100)
          hundred_text = (hundred_unit > 0) ? "#{unit(hundred_unit)} #{@translations.hundred}" : ""
          "#{hundred_text} #{teen(rest)}"
        end

        def mega (number, index)        
          megas_text = (number > 0) ? @translations.megas[index - 2] : ''
          "#{hundred(number)} #{megas_text}"
        end
      end
    end
  end
end
