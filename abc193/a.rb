def discount
  a,b = gets.chomp.split.map(&:to_i)

  Rational((a-b)*100, a).to_f
end

puts discount
