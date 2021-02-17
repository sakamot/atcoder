def alchemist
  n = gets.chomp.to_i
  v = gets.chomp.split.map(&:to_i).sort
  ans = v.shift

  v.each do |vi|
    ans = Rational(ans + vi, 2)
  end

  ans.to_f
end

puts alchemist if $0 == __FILE__
