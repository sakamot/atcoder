n, m = gets.chomp.split(" ").map(&:to_i)
a = [0] + gets.chomp.split(" ").map(&:to_i)
a << n + 1
a.sort!

d = []
(m+1).downto(1) do |i|
  x = a[i] - a[i-1] - 1
  d << x if x > 0
end

stamp_length = d.min
puts d.map{ |x| (x / stamp_length.to_f).ceil }.sum
