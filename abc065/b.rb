def trained?
  n = gets.chomp.to_i
  a = []
  n.times { a << gets.chomp.to_i }

  num = a[0] - 1
  ans = -1

  n.times do |count|
    if num == 1
      ans = count + 1
      break
    end

    num = a[num] - 1
  end

  ans
end

puts trained? if $0 == __FILE__
