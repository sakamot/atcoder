def secret_number
  s = gets.chomp.split('')
  sn = s.zip(('0'..'9').to_a)
  o_nums = sn.select {|a| a[0] == 'o' }.map{|a| a[1]}
  q_nums = sn.select {|a| a[0] == '?' }.map{|a| a[1]}
  x_nums = sn.select {|a| a[0] == 'x' }.map{|a| a[1]}
  ans = 0

  ('0000'..'9999').each do |num|
    # xの数字が含まれていたらnext
    next if (num.split('') & x_nums).size > 0

    # oの数字が全部含まれていなかったらnext
    next if (num.split('') & o_nums).size != o_nums.size

    ans += 1
  end

  ans
end

puts secret_number
