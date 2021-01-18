def takahashi_unevolved
  # x: 初めの強さ
  # y: 進化する強さ
  # a: カコモンジムでとっくしんた時強さa倍
  # b: AtCoderジムで特訓した時の強さb増える
  x, y, a, b = gets.chomp.split(' ').map(&:to_i)
  ans = 0

  while a*x<=x+b && a*x<y
    x*=a
    ans+=1
  end

  # (y-1-x)/b 残り何回AtCoderジムに通えるか + ans
  ans+(y-1-x)/b
end

puts takahashi_unevolved if $0 == __FILE__
