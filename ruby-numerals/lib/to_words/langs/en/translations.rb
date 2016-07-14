module ToWords
  module Langs
    module En
      class Translations 
        def units
          %w[~ one two three four five six seven eight nine]
        end

        def teen
          %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
        end

        def teens
          %w[~ twenty thirty forty fifty sixty seventy eighty ninety]
        end

        def hundred
          "hundred"
        end

        def megas
          %w[thousand million billion trillion]
        end
      end
    end
  end
end
