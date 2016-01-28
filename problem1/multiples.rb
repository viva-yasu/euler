module Multiples
  def self.multiples_3_or_5 i
    num = 1
    sum = 0
    while num < i
      if num.modulo(3) == 0 || num.modulo(5) == 0
        sum += num
      end
      num += 1
    end
    puts sum
  end
end

Multiples.multiples_3_or_5 1000