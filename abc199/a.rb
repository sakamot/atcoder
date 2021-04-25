def square_inequality
  a,b,c = gets.chomp.split.map(&:to_i)

  if a**2 + b**2 < c**2
    return 'Yes'
  else
    return 'No'
  end
end

puts square_inequality
