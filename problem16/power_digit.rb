module PowerDigit
  def self.start
    num = 2 ** 1000
    num_arr =  num.to_s.split('').map(&:to_i)
    sum = 0
    num_arr.each do |n|
      sum += n
    end
    puts sum
  end
end

PowerDigit.start
