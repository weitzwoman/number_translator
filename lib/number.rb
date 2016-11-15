class Fixnum
  define_method(:translate) do
    ones = {
      "1" => 'one',
      "2" => 'two',
      "3" => 'three',
      "4" => 'four',
      "5" => 'five',
      "6" => 'six',
      "7" => 'seven',
      "8" => 'eight',
      "9" => 'nine',
    }
    tens = {
      "10" => 'ten',
      "11" => 'eleven',
      "12" => 'twelve',
      "13" => 'thirteen',
      "14" => 'fourteen',
      "15" => 'fifteen',
      "16" => 'sixteen',
      "17" => 'seventeen',
      "18" => 'eighteen',
      "19" => 'nineteen',
    }
    doubles = {
      "2" => 'twenty',
      "3" => 'thirty',
      "4" => 'fourty',
      "5" => 'fifty',
      "6" => 'sixty',
      "7" => 'seventy',
      "8" => 'eighty',
      "9" => 'ninety',
    }
    hundreds = {
      "1" => 'one hundred',
      "2" => 'two hundred',
      "3" => 'three hundred',
      "4" => 'four hundred',
      "5" => 'five hundred',
      "6" => 'six hundred',
      "7" => 'seven hundred',
      "8" => 'eight hundred',
      "9" => 'nine hundred',
    }
    thousands = {
      "1" => 'one thousand',
      "2" => 'two thousand',
      "3" => 'three thousand',
      "4" => 'four thousand',
      "5" => 'five thousand',
      "6" => 'six thousand',
      "7" => 'seven thousand',
      "8" => 'eight thousand',
      "9" => 'nine thousand',
    }
    ten_thousands = {
      "1" => 'ten',
      "2" => 'twenty',
      "3" => 'thirty',
      "4" => 'fourty',
      "5" => 'fifty',
      "6" => 'sixty',
      "7" => 'seventy',
      "8" => 'eighty',
      "9" => 'ninety',
    }
    hundred_thousands = {
      "1" => 'one hundred thousand',
      "2" => 'two hundred thousand',
      "3" => 'three hundred thousand',
      "4" => 'four hundred thousand',
      "5" => 'five hundred thousand',
      "6" => 'six hundred thousand',
      "7" => 'seven hundred thousand',
      "8" => 'eight hundred thousand',
      "9" => 'nine hundred thousand',
    }
    millions = {
      "1" => 'one million',
      "2" => 'two million',
      "3" => 'three million',
      "4" => 'four million',
      "5" => 'five million',
      "6" => 'six million',
      "7" => 'seven million',
      "8" => 'eight million',
      "9" => 'nine million',
    }
    billions = {
      "1" => 'one billion',
      "2" => 'two billion',
      "3" => 'three billion',
      "4" => 'four billion',
      "5" => 'five billion',
      "6" => 'six billion',
      "7" => 'seven billion',
      "8" => 'eight billion',
      "9" => 'nine billion',
    }
    trillions = {
      "1" => 'one trillion',
      "2" => 'two trillion',
      "3" => 'three trillion',
      "4" => 'four trillion',
      "5" => 'five trillion',
      "6" => 'six trillion',
      "7" => 'seven trillion',
      "8" => 'eight trillion',
      "9" => 'nine trillion',
    }
    i = 0

    new_name = []
    numArr = self.to_s.split("")
    numArr.each() do |number|
puts number
      if self < 10
        word = ones.fetch(number)
        new_name.push(word)
      elsif self < 20 and self > 9 and i < 1
    # I fixed it. Sorry it took forever. - James, Stay classy yo!
        word = tens.fetch(self.to_s)
        new_name.push(word)
        i += 1
      elsif self > 20 and self < 100 and i < 1
        word = doubles.fetch(numArr[i])
        new_name.push(word)
        word1 = ones.fetch(numArr[i + 1])
        new_name.push(word1)
        i += 1
      elsif self > 99 and self < 1000 and i < 1
        word = hundreds.fetch(numArr[i])
        new_name.push(word)
        word1 = doubles.fetch(numArr[i + 1])
        new_name.push(word1)
        word2 = ones.fetch(numArr[i + 2])
        new_name.push(word2)
        i += 1
      elsif self > 999 and self < 10000 and i < 1
        word = thousands.fetch(numArr[i])
        new_name.push(word)
        word1 = hundreds.fetch(numArr[i + 1])
        new_name.push(word1)
        word2 = doubles.fetch(numArr[i + 2])
        new_name.push(word2)
        word3 = ones.fetch(numArr[i + 3])
        new_name.push(word3)
        i += 1
      elsif self > 9999 and self < 100000 and i < 1
        word = ten_thousands.fetch(numArr[i])
        new_name.push(word)
        word1 = thousands.fetch(numArr[i + 1])
        new_name.push(word1)
        word2 = hundreds.fetch(numArr[i + 2])
        new_name.push(word2)
        word3 = doubles.fetch(numArr[i + 3])
        new_name.push(word3)
        word4 = ones.fetch(numArr[i + 4])
        new_name.push(word4)
        i += 1
      elsif self > 99999 and self < 1000000 and i < 1
        hundred_thousand_word = hundred_thousands.fetch(numArr[i])
        new_name.push(hundred_thousand_word)
        word = ten_thousands.fetch(numArr[i + 1])
        new_name.push(word)
        word1 = thousands.fetch(numArr[i + 2])
        new_name.push(word1)
        word2 = hundreds.fetch(numArr[i + 3])
        new_name.push(word2)
        word3 = doubles.fetch(numArr[i + 4])
        new_name.push(word3)
        word4 = ones.fetch(numArr[i + 5])
        new_name.push(word4)
        i += 1
      elsif self > 999999 and self < 10000000 and i < 1
        million_word = millions.fetch(numArr[i])
        new_name.push(million_word)
        hundred_thousand_word = hundred_thousands.fetch(numArr[i + 1])
        new_name.push(hundred_thousand_word)
        word = ten_thousands.fetch(numArr[i + 2])
        new_name.push(word)
        word1 = thousands.fetch(numArr[i + 3])
        new_name.push(word1)
        word2 = hundreds.fetch(numArr[i + 4])
        new_name.push(word2)
        word3 = doubles.fetch(numArr[i + 5])
        new_name.push(word3)
        word4 = ones.fetch(numArr[i + 6])
        new_name.push(word4)
        i += 1
      elsif self > 9999999 and self < 100000000 and i < 1
        billion_word = billions.fetch(numArr[i])
        new_name.push(billion_word)
        million_word = millions.fetch(numArr[i + 1])
        new_name.push(million_word)
        hundred_thousand_word = hundred_thousands.fetch(numArr[i + 2])
        new_name.push(hundred_thousand_word)
        word = ten_thousands.fetch(numArr[i + 3])
        new_name.push(word)
        word1 = thousands.fetch(numArr[i + 4])
        new_name.push(word1)
        word2 = hundreds.fetch(numArr[i + 5])
        new_name.push(word2)
        word3 = doubles.fetch(numArr[i + 6])
        new_name.push(word3)
        word4 = ones.fetch(numArr[i + 7])
        new_name.push(word4)
        i += 1
      elsif self > 99999999 and self < 1000000000 and i < 1
        trillion_word = trillions.fetch(numArr[i])
        new_name.push(trillion_word)
        billion_word = billions.fetch(numArr[i + 1])
        new_name.push(billion_word)
        million_word = millions.fetch(numArr[i + 2])
        new_name.push(million_word)
        hundred_thousand_word = hundred_thousands.fetch(numArr[i + 3])
        new_name.push(hundred_thousand_word)
        word = ten_thousands.fetch(numArr[i + 4])
        new_name.push(word)
        word1 = thousands.fetch(numArr[i + 5])
        new_name.push(word1)
        word2 = hundreds.fetch(numArr[i + 6])
        new_name.push(word2)
        word3 = doubles.fetch(numArr[i + 7])
        new_name.push(word3)
        word4 = ones.fetch(numArr[i + 8])
        new_name.push(word4)
        i += 1
      end


    end
    new_name.join()
  end
end
