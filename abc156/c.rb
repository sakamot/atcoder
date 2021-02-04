def rally
  n = gets.chomp.to_i
  x = gets.chomp.split.map(&:to_i)

  ans = 10**9

  (x.min..x.max).each do |a|
    b = x.map { |xi| (a-xi)**2 }.sum
    break if ans < b

    ans = b
  end

  ans
end

puts rally if $0 == __FILE__
