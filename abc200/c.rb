def ringos_favorite_numbers2
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)
  su = []
  ans = 0

  a.each do |ai|
    su << ai % 200
  end

  counts = su.tally
  counts.each do |_, count|
    next if count < 1

    ans += (count*(count-1))/2
  end

  ans
end

puts ringos_favorite_numbers2
