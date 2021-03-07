def agc040_a
  s = gets.chomp
  a = Array.new(s.size+1, 0)

  # 左から
  (0..(s.size - 1)).each do |i|
    if s[i] == '<'
      a[i+1] = [a[i+1], a[i]+1].max
    end
  end

  # 右から
  (s.size - 1).downto(0) do |i|
    if s[i] == '>'
      a[i] = [a[i+1]+1, a[i]].max
    end
  end

  a.sum
end

puts agc040_a if $0 == __FILE__
