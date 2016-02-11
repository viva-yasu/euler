require 'prime'
module QuadraticPrimes
  def self.start
    result_a = -1
    result_b = -1
    highest_n = -1
    b_arr = primes
    b_idx = 0
    while b_idx < b_arr.length
      b = b_arr[b_idx]
      a = -999
      while a < 1000
        n = 0
        while true
          fn = n**2 + a * n + b
          unless fn.prime?
            if n > highest_n
              highest_n = n
              result_a = a
              result_b = b
            end
            break
          end
          n += 1
        end
        a += 2
      end
      b_idx += 1
    end

    puts "n = #{highest_n}"
    puts "a = #{result_a}"
    puts "b = #{result_b}"
    puts "a * b = #{result_a * result_b}"
  end

  def self.primes
    arr = []
    Prime.each(1000) { |prime| arr << prime}
    arr
  end
end

QuadraticPrimes.start
