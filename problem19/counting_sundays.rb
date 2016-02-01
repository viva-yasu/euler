=begin
Problem 19 「日曜日の数え上げ」
次の情報が与えられている.

1900年1月1日は月曜日である.
9月, 4月, 6月, 11月は30日まであり, 2月を除く他の月は31日まである.
2月は28日まであるが, うるう年のときは29日である.
うるう年は西暦が4で割り切れる年に起こる. しかし, 西暦が400で割り切れず100で割り切れる年はうるう年でない.
20世紀（1901年1月1日から2000年12月31日）中に月の初めが日曜日になるのは何回あるか?
=end

require 'date'

module CountingSundays
  def self.start
    sunday_counter = 0
    1901.upto(2000) do |year|
      1.upto(12) do |month|
        target_month = Date.new(year, month, 1)
        if target_month.wday == 0
          sunday_counter += 1
        end
      end
    end
    puts sunday_counter
  end
end

CountingSundays.start