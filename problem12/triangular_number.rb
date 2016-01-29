module Triangular
  def self.start
    triangular_number = 0
    start_int = 10000
    loop do
      divisors = []
      sum = 0
      1.upto start_int do |n|
        sum += n
      end

      1.upto sum do |n|
        if sum.modulo(n).zero?
          divisors << n
        end
      end

      if divisors.size >= 500
        triangular_number = sum
        break
      end
      start_int += 1
    end
    puts triangular_number
  end
end

Triangular.start