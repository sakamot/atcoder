@h,@w,@a,@b = gets.chomp.split.map(&:to_i)
@used = Array.new(16) { Array.new(16, false) }

def hanjo
  dfs(0,0,@a,@b)
end

# i: 縦
# j: 横
def dfs(i, j, a, b)
  # 一畳と半畳どちらかの畳を使い切ってたら0を返す
  return 0 if (a < 0 || b < 0)

  # 一番右までいったら次の行を見る
  if (j == @w)
    j = 0
    i += 1
  end

  # 一番最後の行まで見たら終わり
  return 1 if (i == @h)
  # そのマスがすでに埋まっていたら、一つ横を見にいく
  return dfs(i, j+1, a, b) if (@used[i][j])

  res = 0;

  # 半畳で埋める
  @used[i][j] = true
  res += dfs(i, j+1, a, b-1)

  # 隣のマスが空いていたら横向きで一畳で埋める
  if (j+1 < @w && !@used[i][j+1])
    @used[i][j+1] = true
    res += dfs(i, j+1, a-1, b)
    @used[i][j+1] = false
  end

  # 下のマスが空いていたら縦向きで一畳で埋める
  if (i+1 < @h && !@used[i+1][j])
    @used[i+1][j] = true
    res += dfs(i, j+1, a-1, b)
    @used[i+1][j] = false
  end

  @used[i][j] = false
  p "#{i},#{j},#{a},#{b}: #{res}"
  return res
end

puts hanjo
