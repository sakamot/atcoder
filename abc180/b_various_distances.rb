def various_distances
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map { |a| a.to_i.abs }

  [x.sum, Math.sqrt(x.map { |a| a * a }.sum), x.max]
end

puts various_distances if $0 == __FILE__
