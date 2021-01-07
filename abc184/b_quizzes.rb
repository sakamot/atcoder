n, x = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split('')

s.each do |a|
  if a == 'o'
    x += 1
  else
    x -= 1 if x > 0
  end
end

puts x
