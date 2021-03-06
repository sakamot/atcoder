def ubiquity
  n = gets.chomp.to_i

  # 包除原理
  # すべての数列の個数 10**n
  # 0が含まれないような数列の個数 9**n
  # 9が含まれないような数列の個数 9**n
  # 0も9も含まれないような数列の個数 (10-2)**n = 8**n
  # すべての数列の個数 - 0が含まれないような数列の個数 - 9が含まれないような数列の個数 + 0も9も含まれないような数列の個数
  # = 10**n - 9**n - 9**n + 8**n

  (10**n - (2 * (9**n)) + 8**n) % (10**9+7)
end

puts ubiquity if $0 == __FILE__
