def made_up
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i).tally
  b = gets.chomp.split.map(&:to_i)
  c = gets.chomp.split.map(&:to_i).tally

  ans = 0

  b.each_with_index do |bi, idx|
    next if !a[bi]

    ans += (c[idx+1].to_i * a[bi])
  end

  ans
end

puts made_up
