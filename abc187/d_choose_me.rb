n=gets.chomp.to_i
a=[]
n.times { a << gets.chomp.split(' ').map(&:to_i) }

x=0-a.sum(&:first)

a.map! do |b|
  b[0] * 2 + b[1]
end

count=0

a.sort.reverse.each do |b|
  x+=b
  count += 1
  break if x > 0
end

puts count
