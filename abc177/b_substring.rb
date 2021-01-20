def substring
  s = gets.chomp
  t = gets.chomp

  return 0 if s.match(t)

  max_count = 0

  for i in (0..(s.length - t.length))
    c = s[i..i+t.length-1].chars.zip(t.chars).count{ |a,b| a == b }
    max_count = c if max_count < c
  end

  t.length - max_count
end

puts substring if $0 == __FILE__
