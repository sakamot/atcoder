def break_number
  n = gets.chomp.to_i

  1 << n.to_s(2).length - 1
end

puts break_number if $0 == __FILE__
