module FactorialDigitSum
  def self.start target_number
    _factorial = factorial(target_number)
    sum_factorial_digit = sum_digit(_factorial)
    p sum_factorial_digit
  end

  def self.factorial n
    _factorial = 1
    n.downto(1) do |i|
      _factorial *= i
    end
    _factorial
  end

  def self.sum_digit n
    n = n.to_s.split('').map(&:to_i)
    sum = 0
    n.each do |i|
      sum += i
    end
    sum
  end
end

FactorialDigitSum.start 100