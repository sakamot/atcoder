def trapezoid_sum
  n = gets.chomp.to_i
  sum = 0

  n.times do |i|
    a, b = gets.chomp.split(' ').map(&:to_i)
    sum += (a..b).to_a.sum
  end

  sum
end


puts trapezoid_sum if $0 == __FILE__
