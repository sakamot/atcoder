def doubled
  n = gets.chomp.to_i
  ans = 0

  (1..1000000).each do |num|
    if (num.to_s*2).to_i <= n
      #p num.to_s*2
      ans += 1
      next
    end

    break
  end

  ans
end

puts doubled
