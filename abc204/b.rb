def nuts
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)
  ans = 0

  a.each do |ai|
    next if ai < 10

    ans += ai-10
  end

  ans
end

puts nuts
