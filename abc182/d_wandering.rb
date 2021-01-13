def wandering
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  # 累積和の累積のmax

  s = [0] # A_1 .. A_i の総和(累積和)
  m = [0] # S_1 .. S_i の最大値(累積和の累積)

  for i in (0...n)
    s[i+1] = s[i] + a[i]
    m[i+1] = [m[i], s[i+1]].max
  end

  res = 0 # 座標の最大値を入れる変数
  cur = 0 # 今の座標

  for i in (0...n)
    res = [res, cur + m[i+1]].max
    cur += s[i+1]
  end

  res
end

puts wandering if $0 == __FILE__
