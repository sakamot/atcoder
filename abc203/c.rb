def friends_and_travel_costs
  n, k = gets.chomp.split.map(&:to_i)
  ab = []
  n.times { ab << gets.chomp.split.map(&:to_i) }
  ab.sort!

  return k if k < ab[0][0]

  k += ab[0][1]

  (1...n).each do |i|
    break if ab[i][0] > k

    k = k + ab[i][1]
  end

  k
end

puts friends_and_travel_costs

