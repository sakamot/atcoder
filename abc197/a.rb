def rotate
  s = gets.chomp

  s[1..-1] + s[0]
end

puts rotate
