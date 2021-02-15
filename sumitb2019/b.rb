def tax_rate
  n = gets.chomp.to_i

  a = (n/1.08).ceil

  (a*1.08).floor == n ? a : ':('
end

puts tax_rate if $0 == __FILE__
