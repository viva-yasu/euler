module NumberLetter

  NUM_ENG = {
      '0' => 'zero',
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine',
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen',
      '20' => 'twenty',
      '30' => 'thirty',
      '40' => 'forty',
      '50' => 'fifty',
      '60' => 'sixty',
      '70' => 'seventy',
      '80' => 'eighty',
      '90' => 'ninety'
  }

  def self.start
    sum_letters = 0
    1.upto 1000 do |n|
      str = get_number_letter(n.to_s)
      c = count_letter str
      sum_letters += c.to_i
    end
    puts sum_letters
  end

  def self.get_number_letter(num)
    if num.size == 1
      return NUM_ENG[num]
    elsif num.size == 2
      return get_two_digits(num)
    elsif num.size == 3
      return get_three_digits(num)
    elsif num.size == 4
      return get_four_digits(num)
    end
  end

  def get_one(num)
    NUM_ENG[num]
  end

  def self.get_two_digits(num)
    num = num.to_i.to_s
    if num.to_i < 20
      return NUM_ENG[num.to_s]
    elsif num.to_i % 10 == 0
      return NUM_ENG[num]
    else
      return NUM_ENG[num[0] + '0'] + ' ' + NUM_ENG[num[1]]
    end
  end

  def self.get_three_digits(num)
    if num.to_i % 100 == 0
      return NUM_ENG[num[0]] + ' hundred'
    else
      return NUM_ENG[num[0]] + ' hundred and ' + get_two_digits(num[1,2])
    end
  end

  def self.get_four_digits(num)
    if num.to_i % 1000 == 0
      return NUM_ENG[num[0]] + ' thousand'
    elsif num.to_i % 100 == 0
      return get_two_digits(num[0, 2]) + ' hundred'
    else
      return get_two_digits(num[0, 2]) + ' hundred and ' + get_two_digits(num[2, 2])
    end
  end

  def self.count_letter(str)
    str.gsub(' ', '').gsub('-', '').size
  end
end

NumberLetter.start