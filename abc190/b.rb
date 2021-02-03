def magic3
  n, s, d = gets.chomp.split.map(&:to_i)
  ans = 'No'
  n.times do
    x, y = gets.chomp.split.map(&:to_i)
    next if x >= s || y <= d

    ans = 'Yes'
  end

  ans
end

puts magic3 if $0 == __FILE__
