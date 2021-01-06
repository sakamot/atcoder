l = gets.chomp.to_i

puts (0..(l - 2)).to_a.combination(11).size

### 二項係数 ###
# 切り口になるL-1箇所から11箇所を選ぶ
# _(L-1) C_11 通りになる
# _(L-1) C_11 = (L-1)(L-2)(L-3)...(L-11) / 1*2*3*...*11

r = 1
for i in 1..11
  r *= (l-i)
  r /= i
end

puts r
