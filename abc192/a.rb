def star
  x = gets.chomp.to_i

  100 - (x % 100)
end

puts star
