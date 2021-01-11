n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

half = (2 ** (n-1)) - 1

second = [a[0..half].max, a[half+1..-1].max].min

puts a.find_index(second) + 1

