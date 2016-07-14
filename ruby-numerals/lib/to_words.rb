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
    number
      .to_s
      .split(//)
      .reverse
      .each_slice(3)
      .map { |x| x.join('').reverse.to_i }
  end

  def array_to_words (decompused_number, strategy)
    decompused_number
      .to_enum
      .with_index(1)
      .map { |x, index| strategy.new(x, index).to_s }
      .reverse
      .join(' ')
      .gsub(/~/, '')
      .gsub(/\ +/, ' ')
      .strip

  end
end

class Fixnum
  def to_words(lang = :en)
    ToWords.convert(self, lang)   
  end
end
