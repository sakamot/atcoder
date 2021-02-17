def divide_the_problems
  n = gets.chomp.to_i
  d = gets.chomp.split.map(&:to_i).sort

  d[n/2] - d[n/2-1]
end

puts divide_the_problems if $0 == __FILE__
