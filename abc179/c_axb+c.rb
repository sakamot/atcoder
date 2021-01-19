def main
  n = gets.chomp.to_i
  ans = 0

  # a * b + c となる組み合わせを求める
  # aを固定した時にbとして考えられる値は (n-1)/a個ある
  for a in 1...n
    ans += (n-1)/a
  end

  ans
end

puts main if $0 == __FILE__
