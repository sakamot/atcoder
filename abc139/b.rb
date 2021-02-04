def power_socket
  a, b = gets.chomp.split.map(&:to_i)

  x = 1
  count = 0

  while x < b
    x += a-1
    count += 1
  end

  count
end

puts power_socket if $0 == __FILE__
