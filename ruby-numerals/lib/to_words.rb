require "to_words/version"
require "to_words/strategy"

module ToWords
  module_function

  def convert (number, lang)
    decompused_number = decompuse_number(number)
    strategy = StrategySelection.select(lang)
    array_to_words(decompused_number, strategy)
  end

  def decompuse_number (number)
    number_to_params = number.to_s.split(//)
                        .reverse
                        .to_enum
                        .with_index(1)
                        .inject([]) { |acc, (number, index)| 
                          acc.push [number.to_i, index, calc_rest(acc)] 
                        }
    number_to_params.map { |x| [x[0].to_i, x[1], x[2].to_i]}.reverse
  end

  def calc_rest (acc)
    if (acc.last == nil)  
      ''
    else 
      acc.last.first.to_s + acc.last.last.to_s
    end
  end

  def array_to_words (decompused_number, strategy)
    if decompused_number.size == 1
      apply_strategy decompused_number, strategy
    else      
      apply_strategy decompused_number[0..-2], strategy    
    end
  end

  def apply_strategy (decompuse_number_to_apply, strategy)
    decompuse_number_to_apply
      .to_enum
      .with_index(1)
      .map {|number_params, index| strategy.new(number_params, index  == decompuse_number_to_apply.size).to_s }
      .join(' ')
      .gsub(/\ +/, ' ')
      .strip
  end
end

class Fixnum
  def to_words(lang = :en)
    ToWords.convert(self, lang)   
  end
end
