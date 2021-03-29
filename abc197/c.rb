def orxor
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  ans = 1 << 30

  (0..(1<<n-1)-1).each do |s|
    now = 0 #XORの結果を持っておく変数
    o = 0 #区間内のORの結果を持っておく変数

    n.times do |i|
      o |= a[i]
      if (s>>i&1 == 1)
        now ^= o
        o = 0
      end
    end

    now ^= o
    ans = [ans, now].min
  end

  ans
end

puts orxor
