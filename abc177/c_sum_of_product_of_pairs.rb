def sum_of_product_of_pairs
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  ans = 0

  # a[i]*a[i+1] + a[i]*a[i+2] + a[i]*a[i+3] + a[i]*a[i+4]
  # = a[i] * (a[i+1] + a[i+2] + a[i+3] + a[i+4])
  # なので
  # (a[i+1] + a[i+2] + a[i+3] + a[i+4]) の累積和を作っておく
  #
  # a = [1, 2, 3, 4] の時
  # → s = [9(2+3+4), 7(3+4), 4, 0] を作る
  #
  # s[i]*a[i]を足して余りを求める

  s = [0, a[-1]]

  (n-2).downto(1) do |i|
    s << a[i] + s[-1]
  end

  s.reverse!

  a.each_with_index do |aa, i|
    ans += aa * s[i]
  end

  ans % ((10**9)+7)
end

puts sum_of_product_of_pairs if $0 == __FILE__
