def difference_max
  a,b = gets.chomp.split.map(&:to_i)
  c,d = gets.chomp.split.map(&:to_i)

  [a,b].max - [c,d].min
end

puts difference_max
