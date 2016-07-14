module ToWords
  module Langs 
    module Es
      class Translations      
        def units
          %w[~ uno dos tres cuatro cinco seis siete ocho nueve]
        end

        def teen
          %w[diez once doce trece catorce quince dieciseis diecisiete dieciocho diecinueve]
        end

        def twenty
          %w[veinte ventiuno ventidos ventitres venticuatro venticinco ventiseis ventisiete ventiocho ventinueve]
        end

        def teens
          %w[~ treinta cuarenta cincuenta sesenta setenta ochenta noventa]
        end

        def hundred
          "cien"
        end

        def hundreds
          %w[~ ciento doscientos trecientos cuatrocientos quinientos seiscientos setecientos ochocientos novecientos]
        end

        def megas_singular
          ['~', 'mil', 'millon', 'mil millones'  'billlon']
        end

        def megas_plural
          ['~', 'mil', 'millones', 'mil millones'  'billlon']
        end
      end
    end
  end
end
