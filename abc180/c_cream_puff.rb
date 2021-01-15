def cream_puff
  n = gets.chomp.to_i
  a = []
  i = 1

  # i = 1, 2 ... √n まで試し割りをする
  while i*i <= n
    if n % i == 0
      a << i
      a << (n / i) # 割り切れる数は割った答えも割り切れる数
    end

    i += 1
  end

  a.uniq.sort
end

puts cream_puff if $0 == __FILE__
