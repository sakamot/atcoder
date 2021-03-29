def checkpoints
  n, m = gets.chomp.split.map(&:to_i)
  ab = [] # 学生が今いる位置
  n.times { ab << gets.chomp.split.map(&:to_i) }
  cd = [] # チェックポイント
  m.times { cd << gets.chomp.split.map(&:to_i) }

  dis = []

  ab.each do |a, b|
    dis <<
      cd.map do |c, d|
        (a-c).abs + (b-d).abs
      end
  end

  dis.map do |d|
    d.index(d.min) + 1
  end
end

puts checkpoints
