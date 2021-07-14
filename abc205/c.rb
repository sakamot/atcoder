def pow
  a,b,c = gets.chomp.split.map(&:to_i)

  if c%2 == 0
    a = a.abs
    b = b.abs
  end

  if a == b
    '='
  elsif a > b
    '>'
  else
    '<'
  end
end

puts pow
