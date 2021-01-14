def collinearity
  n = gets.chomp.to_i
  xy = []

  n.times do
    xy << gets.chomp.split(' ').map(&:to_f)
  end

  xy.combination(3).each do |t|
    a, b, c = t

    # (x1,y1) と (x2,y2) を通る直線の傾きは、y2−y1 / x2−x1 
    return 'Yes' if b[0]-a[0] == 0 && c[0]-b[0] == 0

    next if b[0]-a[0] == 0 || c[0]-b[0] == 0

    return 'Yes' if ((b[1]-a[1]) / (b[0]-a[0])) == ((c[1]-b[1]) / (c[0]-b[0]))
  end

  'No'
end

puts collinearity if $0 == __FILE__
