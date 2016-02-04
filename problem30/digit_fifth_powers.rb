module 	DigitFifthPowers
  def self.start
    match = []
    (2..354294).each do |n|
      a = n.to_s.split('').map(&:to_i)
      tmp = []
      a.each do |i|
        tmp << i**5
      end
      match << n if n == tmp.inject(:+)
    end
    puts match.inject(:+)
  end
end

DigitFifthPowers.start
