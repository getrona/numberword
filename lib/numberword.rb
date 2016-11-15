class Fixnum
  define_method(:numberword) do
    ones = {
      1  => "one",
      2  => "two",
      3  => "three",
      4  => "four",
      5  => "five",
      6  => "six",
      7  => "seven",
      8  => "eight",
      9  => "nine",
      10  => "ten",
      11  => "eleven",
      12  => "twelve",
      13  => "thirteen",
      14  => "fourteen",
      15  => "fifteen",
      16  => "sixteen",
      17  => "seventeen",
      18  => "eighteen",
      19  => "nineteen"
    }
    tens = {
      2 => "twenty",
      3 => "thirty",
      4 => "fourty",
      5 => "fifty",
      6 => "sixty",
      7 => "seventy",
      8 => "eighty",
      9 => "ninety"
    }
    higher_digits = {
      4 => "thousand",
      7 => "million",
      10 => "billion",
      13 => "trillion"
    }
    # assume 3 digit number. split into threes for higher
    sentence = []
    groups = []
    digits = self.to_s
    for i in 1..(digits.length/3.0).ceil do
      if(digits.length > 3)
        groups.push(digits.slice!(-3, 3).to_i)
      else
        groups.push(digits.to_i)
      end
    end

    groups.reverse.each do |num|
      if num >= 100
        sentence.push(ones.fetch(num/100))
        sentence.push("hundred")
        num = num % 100
      end

      if num >= 20
        sentence.push(tens.fetch(num/10))
        num = num % 10
      end
      if ones.has_key?(num)
      	sentence.push(ones.fetch(num))
      end
    end
    
    # num = self.to_s.split("").map(&:to_i)
    # if num.length == 3
    #   sentence.push(ones[num[0]])
    #   sentence.push("hundred")
    # end
    # if num.length >= 1 or (num.length == 2 and num[0] == 1)
    #   sentence.push(ones[num[0]])
    # end
    sentence.join(" ")
  end
end
