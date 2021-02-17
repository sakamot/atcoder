def replacing_integer
  n, k = gets.chomp.split.map(&:to_i)

  ans = n%k
  [ans, (ans - k).abs].min
end

puts replacing_integer if $0 == __FILE__
