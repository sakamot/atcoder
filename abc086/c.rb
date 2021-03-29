def traveling
  n = gets.chomp.to_i
  txy = [[0,0,0]]
  n.times { txy << gets.chomp.split.map(&:to_i) }
  ans = 'Yes'

  (1..n).each do |i|
    ta, xa, ya = txy[i-1]
    tb, xb, yb = txy[i]

    s = (tb-ta)
    d = (xb-xa).abs + (yb-ya).abs
    next if (d <= s) && (s&1 == d&1)

    ans = 'No'
  end

  ans
end

puts traveling
