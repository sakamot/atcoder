def visibility
  h, w, x, y = gets.chomp.split.map(&:to_i)
  s = []
  h.times { s << gets.chomp.split('') }
  count = 1

  if y > 1
    s[x-1][0..(y-2)].reverse.each do |a|
      break if a == '#'
      count += 1
    end
  end

  s[x-1][y..-1].each do |a|
    break if a == '#'
    count += 1
  end

  hary = s.map{|aa| aa[y-1]}

  if x > 1
    hary[0..(x-2)].reverse.each do |a|
      break if a == '#'
      count += 1
    end
  end

  hary[x..-1].each do |a|
    break if a == '#'
    count += 1
  end

  count
end

puts visibility
