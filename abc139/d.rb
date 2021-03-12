def modsum
  n = gets.chomp.to_i

  (1..n-1).sum
end

puts modsum if $0 == __FILE__
