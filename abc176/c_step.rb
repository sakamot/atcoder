def step
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  max = 0
  ans = 0

  for i in (1...n)
    x = [a[i-1], max].max - a[i] 
    max = [a[i-1], max, a[i]].max
    ans += x.abs if x > 0
  end

  ans
end

puts step if $0 == __FILE__
