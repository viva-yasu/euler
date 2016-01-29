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