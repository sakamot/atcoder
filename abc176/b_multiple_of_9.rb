def multiple_of_9
  n = gets.chomp.to_i

  n % 9 == 0 ? 'Yes' : 'No'
end

puts multiple_of_9 if $0 == __FILE__
