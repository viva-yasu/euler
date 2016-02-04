class Integer
  def divs
    rti = (self**0.5).to_i
    ans = (1..rti).select{|x| self % x == 0}
    ans.concat(ans.map{|x| self / x}.reverse)
    ans.uniq
  end

  def amicable?
    _self = self
    was = _self.divs.inject(:+) - _self
    wat = was.divs.inject(:+) - was
    return true if wat == _self and _self != was
    false
  end

end

module Amicable
  def self.start
    puts (2..10000).select{|x| x.amicable?}.inject(:+)
  end
end

Amicable.start
