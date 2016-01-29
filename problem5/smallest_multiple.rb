=begin
Problem 5 「最小の倍数」

2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.

では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.
=end

module SmallestMultiple
  def self.start
    target_number = 20
    done_flg = false
    loop do
      20.downto(1) do |n|
        result = target_number % n
        if result != 0
          break
        end
        if n == 1
          puts target_number
          done_flg = true
          break
        end
      end
      break if done_flg
      target_number += 1
    end

  end
end

SmallestMultiple.start