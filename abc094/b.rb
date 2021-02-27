def toll_gates
  n, m, x = gets.chomp.split.map(&:to_i)
  a = gets.chomp.split.map(&:to_i) # 料金所

  a.partition{|i| i < x }.map(&:size).min
end

puts toll_gates if $0 == __FILE__
