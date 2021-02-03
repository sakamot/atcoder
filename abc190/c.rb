def bowls_and_dishes

  # o(2^k * (N+M+k))
  # 人はどちらかの皿にボールをおくので2^k
  # 人の全探索を全部試して最大値が答え

  n, m = gets.chomp.split.map(&:to_i) #n,m: 皿の数
  ab = [] # ab: 条件
  m.times { ab << gets.chomp.split.map(&:to_i) }

  k = gets.chomp.to_i # k: 人の数
  cd = [] # cd: ボールをおく個数
  k.times { cd << gets.chomp.split.map(&:to_i) }

  ans = 0

  for s in 0...1<<k
    dish = Array.new(n+1, 0)

    for i in 0...k
      if (s>>(i) & 1) == 0
        dish[cd[i][0]] += 1
      else
        dish[cd[i][1]] += 1
      end
    end

    count = 0
    ab.each do |a, b|
      count += 1 if dish[a] > 0 && dish[b] > 0
    end

    ans = [ans, count].max
  end

  ans
end

puts bowls_and_dishes if $0 == __FILE__
