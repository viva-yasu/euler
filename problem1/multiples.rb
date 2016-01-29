module Multiples
  def self.multiples_3_or_5 i
    num = 1
    sum = 0
    while num < i
      sum += num if num.modulo(3).zero? || num.modulo(5).zero?
      num += 1
    end
    puts sum
  end
end

Multiples.multiples_3_or_5 1000