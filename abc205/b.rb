def permutation_check
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  ((1..n).to_a & a).size == n ? 'Yes' : 'No'
end

puts permutation_check
