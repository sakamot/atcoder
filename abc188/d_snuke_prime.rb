def snuke_prime
  # 標準入力↓の時
  # 2 6
  # 1 2 4
  # 2 2 4
  n, c = gets.split.map(&:to_i)
  event= []

  (0..n-1).each do|i|
    a, b, cc = gets.chomp.split.map(&:to_i)

    # cc円上がる・下がるイベントを持っておく
    # event = [[0, 4], [2, -4], [1, 4], [2, -4]]
    event << [a-1, cc]
    event << [b, -cc]
  end
  event.sort! # [[0, 4], [1, 4], [2, -4], [2, -4]]

  fee = 0 # 現在の料金
  t = 0 # 何日目を見ているか
  cost = 0

  event.each do |x, y|
    if x != t
      cost += [c, fee].min * (x - t)
      t = x
    end
    fee += y
  end

  cost
end

puts snuke_prime
