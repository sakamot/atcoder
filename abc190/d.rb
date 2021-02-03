require "prime"

# 約数を列挙した数列を返す関数
def divisor_enumeration(n)
  # prime_division: 自身を素因数分解した結果
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

n = gets.to_i

# 約数のうち奇数であるものの数を2倍して出力
puts divisor_enumeration(n).count{ |x| x & 1 == 1 } * 2
