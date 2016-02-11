=begin
Problem 26 「逆数の循環節 その1」
単位分数とは分子が1の分数である. 分母が2から10の単位分数を10進数で表記すると次のようになる.

1/2 = 0.5
1/3 = 0.(3)
1/4 = 0.25
1/5 = 0.2
1/6 = 0.1(6)
1/7 = 0.(142857)
1/8 = 0.125
1/9 = 0.(1)
1/10 = 0.1

0.1(6)は 0.166666... という数字であり, 1桁の循環節を持つ. 1/7 の循環節は6桁ある.

d < 1000 なる 1/d の中で小数部の循環節が最も長くなるような d を求めよ.
=end

module ReciprocalCycles
  def self.start
    repetition_num = {}
    (2...1000).each do |i|
      next unless (a = get_cycle_size(i))
      repetition_num[i] = a
    end
    max_num = repetition_num.sort {|a, b| a[1] <=> b[1]}[-1][0]
    puts max_num
  end

  def self.get_cycle_size(i)
    remainder = []
    divided = 1
    loop do
      a = divided % i
      return nil if a.zero?
      if (b = remainder.index(a))
        return remainder.size - b
      end
      remainder << a
      divided = a * 10
    end
  end
end

ReciprocalCycles.start
