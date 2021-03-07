def irreversible_operation
  s = gets.chomp
  ans = 0

  b_count = 0

  # Wの時、左側にあるBの数を足していく
  s.size.times do |i|
    if s[i] == 'W'
      ans += b_count
      next
    end

    b_count += 1
  end

  ans
end

puts irreversible_operation if $0 == __FILE__
