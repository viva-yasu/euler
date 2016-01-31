module NamesScores
  def self.start
    name_list = get_name_list
    chars_score_list = get_chars_score_list
    name_scores = []

    sorted_name_list = sort_alpha(name_list)
    sorted_name_list.each do |name|
      name_score = name_char_score(name, chars_score_list)
      name_order = sorted_name_list.index(name) + 1
      sum_name_score = sum_arr(name_score)
      name_scores << sum_name_score * name_order
    end
    total_score = sum_arr(name_scores)
    puts total_score
  end

  def self.get_chars_score_list
    a = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    chars_score_list = {}
    1.upto(26) do |n|
      chars_score_list.store(a[n - 1], n)
    end
    chars_score_list
  end

  def self.sort_alpha(name_list)
    name_list.sort do |a, b|
      a <=> b
    end
  end

  def self.name_char_score(name, chars_score_list)
    name_score= []
    name_chars = name.split('')
    name_chars.each do |n|
      name_score << chars_score_list[n]
    end
    name_score
  end

  def self.sum_arr(arr)
    sum = 0
    arr.each do |n|
      sum += n
    end
    sum
  end

  def self.get_name_list
    begin
      name_list = []
      File.open('names.txt') do |file|
        file.each_line do |l|
          name_list = l.gsub('"', '').split(',')
        end
      end
      return name_list
    rescue SystemCallError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    end
    name_list
  end
end

NamesScores.start