def kaprekar_number
  n, k = gets.chomp.split.map(&:to_i)
  n = n.to_s.chars.map(&:to_i)
  a = [n.join.to_i]

  (1..k).each do |i|
    num = a[i-1].to_s.chars.map(&:to_i).sort

    a << (num.reverse.join.to_i - num.join.to_i)

    break if a[i-1] == a[i]
  end

  a[-1]
end

puts kaprekar_number
