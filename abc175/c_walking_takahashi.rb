def main
  # x: 座標
  # k: 回数
  # d: 1回に移動する距離
  x, k, d = gets.chomp.split.map(&:to_i)

  x = x.abs

  m = (x/d)

  if m < k
    x -= m * d
    k -= m

    return (x - (k%2) * d).abs
  end

  (x - (k*d)).abs
end

puts main if $0 == __FILE__
