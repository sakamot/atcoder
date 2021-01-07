a, b = gets.chomp.split(" ").map(&:to_i)
c, d = gets.chomp.split(" ").map(&:to_i)

# p = |c - a|, q = |d - b| とすると
# p == q == 0 の時0回
# p == q の時1回
# p + q ≤ 3 の時1回
# それ以外は2回以上かかる
#
# どんなケースでも、3回以内に到達可能
#

p = (c - a).abs
q = (d - b).abs

### 0回で行ける場合 ###

if (p == 0 && q == 0)
  puts 0
  exit
end

### 1回で行ける場合 ###

if (p == q || p + q <= 3)
  puts 1
  exit
end

### 2回で行ける場合 ###
# p + q が偶数の場合
# p + q ≤ 6 の時（1回の移動でp+qを3増やせる）
# |p - q| ≤ 3の時（最初に(p,p)まで移動して、そこから1回で行ける）

if (p + q) & 1 == 0 || p + q <= 6 || (p - q).abs <= 3
  puts 2
  exit
end

### それ以外は3回 ###

puts 3
