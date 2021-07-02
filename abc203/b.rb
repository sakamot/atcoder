def atcoder_condominium
  n, k = gets.chomp.split.map(&:to_i)

  (1..k).sum * n +
    (1..n).map{|a| a * k }.sum * 100
end

puts atcoder_condominium
