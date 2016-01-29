module Pythagorean
  def self.start
    result = 0
    200.upto(1000) do |i|
      300.upto(1000) do |j|
        400.upto(1000) do |k|
          if pythagorean?(i, j, k) && this_condition?(i, j, k)
            result = i * j * k
          end
        end
      end
    end
    puts result
  end

  def self.pythagorean?(a, b, c)
    a < b && b < c && a**2 + b**2 == c**2
  end

  def self.this_condition?(a, b, c)
    a + b + c == 1000
  end
end

Pythagorean.start