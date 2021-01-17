def two_sequences_2
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  b = gets.chomp.split(' ').map(&:to_i)
  c = [a[0]*b[0]]
  max = a[0]

  for i in 1...n
    max = [max, a[i]].max
    c[i] = [c[i-1], max * b[i]].max
  end

  c
end

puts two_sequences_2 if $0 == __FILE__
