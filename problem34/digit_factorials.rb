module DigitFactorial
  def self.start
    digit_factorials = []
    num = 145
    while num < 2540160
      digit_factorials << num if check_digit_factorial?(num)
      num += 1
    end
    puts digit_factorials.inject(:+)
  end

  def self.check_digit_factorial?(n)
    digit_factorials = []
    target_num = n
    n = n.to_s.split('').map(&:to_i)
    n.each do |i|
      digit_factorials << factorial(i)
    end
    digit_factorials.inject(:+) == target_num
  end

  def self.factorial(n)
    (1..n).inject(1, :*)
  end
end

DigitFactorial.start
