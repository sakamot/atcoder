# TLE
# O(n²)
def mandarin_orange
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  max = 0

  # l, rが範囲
  a.each_with_index do |num, l|
    next if max > num*(n-l)

    for r in (l..n-1)
      # 範囲の中で最小の数字を範囲数分掛ける
      break if num > a[l]
      max = [max, a[l..r].min*(r-l+1)].max
    end
  end

  max
end

puts mandarin_orange
