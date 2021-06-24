def century
  n = gets.chomp.to_i

  n%100 == 0 ? n/100 : n/100 + 1
end

puts century
