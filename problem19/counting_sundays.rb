require 'date'

module CountingSundays
  def self.start
    sunday_counter = 0
    1901.upto 2000 do |year|
      1.upto 12 do |month|
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