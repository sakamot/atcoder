def collecting_balls
  n = gets.chomp.to_i
  k = gets.chomp.to_i
  x = gets.chomp.split.map(&:to_i)
  ans = 0

  x.each do |xi|
    ans += [xi-0, (k-xi).abs].min * 2
  end

  ans
end

puts collecting_balls if $0 == __FILE__
