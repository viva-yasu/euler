module Amicable
  def self.start
    amicable_numbers = []
    200.upto(300) do |n|
      n_divs = {}
      n_sum_div = sum_divisors(get_divisors(n))
      n_divs.store(n, n_sum_div)
      200.upto(300) do |i|
        next if n == i
        i_sum_div = sum_divisors(get_divisors(i))
        if n_divs[i_sum_div]

        end
      end
    end
    p amicable_numbers
  end
  def self.get_divisors int
    divisors = []
    1.upto(int - 1) do |n|
      if int.modulo(n).zero?
        divisors << n
      end
    end
    divisors
  end
  def self.sum_divisors target_number
    sum = 0
    target_number.each do |n|
      sum += n
    end
    sum
  end
  def self.sum_amicable_numbers amicable_numbers
    sum = 0
    amicable_numbers.each do |n|
      sum += n
    end
    sum
  end
  def self.ex n
    p sum_divisors(get_divisors(n))
  end
end

Amicable.start
