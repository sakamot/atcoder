def bingo
  card = []
  3.times { card << gets.chomp.split.map(&:to_i) }
  n = gets.chomp.to_i
  b = []
  n.times { b << gets.chomp.to_i }


  if ([card[0][0], card[1][1], card[2][2]] & b).size == 3
    return 'Yes'
  end

  if ([card[0][2], card[1][1], card[2][0]] & b).size == 3
    return 'Yes'
  end

  ans = 'No'

  3.times do |i|
    if (card[i] & b).size == 3
      ans = 'Yes'
      break
    end

    if ([card[0][i], card[1][i], card[2][i]] & b).size == 3
      ans = 'Yes'
      break
    end
  end

  ans
end

puts bingo
