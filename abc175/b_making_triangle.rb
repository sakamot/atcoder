def main
  n = gets.chomp.to_i
  l = gets.chomp.split.map(&:to_i)
  ans = 0

  for i in 0...n
    for j in i+1...n
      next if l[i] == l[j]

      for k in j+1...n
        next if [l[i], l[j], l[k]].tally.count < 3

        # 三角形を作るには一番長い辺が、他の2辺の長さの和よりも短い必要
        ans += 1 if [l[i], l[j], l[k]].max < [l[i], l[j], l[k]].min(2).sum
      end
    end
  end

  ans
end

puts main if $0 == __FILE__
