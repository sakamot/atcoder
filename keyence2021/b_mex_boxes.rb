def mex_boxes
  # n: ボールの数
  # k: 箱の数
  n, k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i).tally
  box = Array.new(k, 0)
  ans = 0

  for i in 0..a.keys.max
    box = [i] * [a[i].to_i, box.size].min
    ans += box.size
  end

  ans
end

puts mex_boxes if $0 == __FILE__
