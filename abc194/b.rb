def job_assignment
  n = gets.chomp.to_i
  ab = []
  n.times { ab << gets.chomp.split.map(&:to_i) }
  min = 10**5+1


  (0..n-1).each do |i|
    a = ab[i][0]
    ab_sum = ab[i].sum
    (0..n-1).each do |j|
      next if i == j
      b = ab[j][1]
      min = [[a,b].max, ab_sum, min].min
    end
  end

  min
end

puts job_assignment
