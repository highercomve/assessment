require 'to_words/strategy_base'
require 'to_words/langs/es/translations'

module ToWords
  module Langs
    module Es
      class Strategy < ToWords::StrategyBase
        LANG = :en
        def initialize (number, index)
          super number, index
          @translations = ToWords::Langs::Es::Translations.new()
        end

        private
        def unit (number)
          @translations.units[number]
        end

        def teen (number)
          teen_unit, rest = number.divmod(10)
          return "#{unit(rest)}" if teen_unit == 0

          case teen_unit 
          when 1
            @translations.teen[rest]
          when 2
            @translations.twenty[rest]
          else
            unit_text = (unit(rest) != '~') ? " y #{unit(rest)}" : ""
            "#{@translations.teens[teen_unit - 2]}#{unit_text}" 
          end
        end

        def hundred (number)
          hundred_unit, rest = number.divmod(100)
          if hundred_unit == 1 && rest == 0
            hundred_text = "#{@translations.hundred}"
          else 
            hundred_text = (hundred_unit > 0) ? "#{@translations.hundreds[hundred_unit]}" : ""
          end
          "#{hundred_text} #{teen(rest)}"
        end

        def mega (number, index)     
          index = ((index - 1) < 0) ? 0 : (index - 1)  
          if number < 2
            megas_text = (number > 0) ? @translations.megas_singular[index] : ''
            "#{megas_text}"
          else
            megas_text = (number > 0) ? @translations.megas_plural[index] : ''
            "#{hundred(number)} #{megas_text}"
          end
        end
      end
    end
  end
end
