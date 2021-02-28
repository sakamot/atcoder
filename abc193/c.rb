def unexpressed
  n = gets.chomp.to_i

  nums = []

  (2..Math.sqrt(n)).each do |i|
    # 34 = だいたいlog_2(10^10)
    (2..34).each do |j|
      break if i**j > n
      nums << i**j
    end
  end

  nums.uniq!

  n - nums.size
end

puts unexpressed
