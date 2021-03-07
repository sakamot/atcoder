def ss
  s = gets.chomp[0..-2]
  ans = 0

  # sの文字数は必ず偶数
  if (s.size & 1) == 1
    s = s[0..-2]
  end

  while s.size > 0
    # 前半半分と後半半分が同じになったらそれが答え
    if s[0..(s.size/2)-1] == s[s.size/2..-1]
      ans = s.size
      break
    end

    # sの文字数は偶数なので2ずつ短くしていく
    s = s[0..-3]
  end

  ans
end

puts ss if $0 == __FILE__ ==
