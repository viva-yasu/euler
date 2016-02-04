module Fibonacci
  def self.start
    nums = [1, 1]

    loop do
      tmp = nums[-2] + nums[-1]
      nums << tmp
      if Math.log10(tmp).to_i + 1 >= 1000
        break
      end
    end

    puts nums.size
  end
end

Fibonacci.start