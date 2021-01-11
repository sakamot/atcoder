n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
inner_point = 0

n.times do |i|
  inner_point += a[i] * b[i]
end

puts inner_point == 0 ? 'Yes' : 'No'
