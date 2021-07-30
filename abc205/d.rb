def kth_excluded
  n, q = gets.chomp.split.map(&:to_i)
  a = gets.chomp.split.map(&:to_i)
  ans = []
  c = a.each_with_index.map { |ai, i| ai - ( 1 + i ) }

  max = c.max

  q.times do
    ki = gets.chomp.to_i

    if max < ki
      ans << a[-1] + ki - max
      next
    end

    # bsearch_index: 条件を満たす値の位置を二分探索で探す
    i = c.bsearch_index { |x| x >= ki } - 1

    if i < 0
      ans << ki
      next
    end

    ans << a[i] + ki - c[i]
  end

  ans
end

puts kth_excluded
