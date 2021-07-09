def tour
  n, m = gets.chomp.split.map(&:to_i)
  # 都市iから道路で直接繋がっている都市のリスト
  @g = Array.new(n) { Array.new() }
  m.times do
    a, b = gets.chomp.split.map(&:to_i)
    @g[a-1] << b-1
  end

  ans = 0

  n.times do |i|
    # temp[j] は都市jに到達可能かどうかを表す
    @temp = Array.new(n, false)

    dfs(i)
    ans += @temp.count(true)
  end

  ans
end

# dfs: 深さ優先探索
def dfs(v)
  return if @temp[v]
  @temp[v] = true
  @g[v].each do |vv|
    dfs(vv)
  end
end

puts tour
