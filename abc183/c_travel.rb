n, k = gets.chomp.split(' ').map(&:to_i)
t = []
n.times { t << gets.chomp.split(' ').map(&:to_i) }

w = (1..(n-1)).to_a.permutation.to_a
c = 0

w.each do |w|
  sum = t[0][w[0]]

  for i in (0..w.length - 2)
    sum += t[w[i]][w[i+1]]
  end

  sum += t[w[w.length - 1]][0]

  c += 1 if sum == k
end

puts c
