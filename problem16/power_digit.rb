module PowerDigit
  def self.start
    num = 2**1000
    num_arr = num.to_s.split('').map(&:to_i)
    puts sum_arr(num_arr)
  end

  def self.sum_arr(arr)
    sum = 0
    arr.each do |n|
      sum += n
    end
    sum
  end
end

PowerDigit.start
