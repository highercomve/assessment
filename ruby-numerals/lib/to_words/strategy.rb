require 'to_words/langs/en/strategy'
require 'to_words/langs/es/strategy'

module ToWords
  module StrategySelection
    module_function
    def select(lang)
      case lang
      when :en
        ToWords::Langs::En::Strategy
      when :es 
        ToWords::Langs::Es::Strategy
      else
        ToWords::Langs::En::Strategy
      end
    end
  end
end
