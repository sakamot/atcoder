def savings
  n = gets.chomp.to_i
  i = 1
  sum = 0

  while true do
    sum += i
    break if sum >= n
    i += 1
  end

  i
end

puts savings
