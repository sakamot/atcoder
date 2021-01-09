def water_heater
  n, w = gets.chomp.split(" ").map(&:to_i)
  num = Array.new(2 * 10**5 + 1, 0)

  # いもす法
  # s, t, p = 1, 3, 5 の時
  # [0, 5, 0, -5] を持っておく
  # 2回目のループで [0, 5, 5, 0] を作る

  n.times do
    s, t, p = gets.chomp.split(" ").map(&:to_i)
    num[s] += p
    num[t] -= p
  end

  (num.length - 1).times do |i|
    num[i+1] += num[i]
  end

  num.max > w ? 'No' : 'Yes'
end

puts water_heater if $0 == __FILE__
