n=gets.chomp.to_i
a=[]
n.times { a<<gets.chomp.split(' ').map(&:to_i) }
count = 0

a.combination(2).to_a.each do |b|
  t = (b[1][1] - b[0][1]).to_f /  (b[1][0] - b[0][0])
  count += 1 if (-1.0<=t && t<=1.0)
end

puts count
