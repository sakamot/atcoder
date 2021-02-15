def traveling_salesman_around_lake
  k, n = gets.chomp.split.map(&:to_i)
  a = gets.chomp.split.map(&:to_i)
  ans = [a[0] + k - a[n-1]]

  (0..n-2).each do |i|
    ans << a[i+1] - a[i]
  end

  ans.min(n-1).sum
end

puts traveling_salesman_around_lake if $0 == __FILE__
