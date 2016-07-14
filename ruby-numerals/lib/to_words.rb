require "to_words/version"

module ToWords
  module_function

  def convert(number, lang)
  end
end

class Fixnum
  def to_words(lang = :en)
    ToWords.convert(self, lang)   
  end
end
