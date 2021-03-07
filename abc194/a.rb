def i_scream
  a, b = gets.chomp.split.map(&:to_i)

  return 1 if a+b >= 15 && b >= 8

  return 2 if a+b >= 10 && b >= 3

  return 3 if a+b >= 3

  return 4
end

puts i_scream
