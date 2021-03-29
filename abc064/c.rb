def colorful_leaderboard
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)
  rates = {
    gray: [1,399], # レート 1-399：灰色
    brown: [400, 799], # レート 400-799：茶色
    green: [800, 1199], # レート 800-1199：緑色
    light_blue: [1200, 1599], # レート 1200-1599：水色
    blue: [1600, 1999], # レート 1600-1999：青色
    yellow: [2000, 2399], # レート 2000-2399：黄色
    orange: [2400, 2799], # レート 2400-2799：橙色
    red: [2800, 3199] # レート 2800-3199：赤色
  }

  ans = {}

  rates.each do |rate, nums|
    m = ((nums[0]..nums[1]).to_a & a).size

    ans[rate] = m if m > 0
  end

  max_rate_size = a.select{|n| n > 3199}.size
  min = [ans.keys.size, 1].max
  max = ans.keys.size+max_rate_size

  "#{min} #{max}"
end

puts colorful_leaderboard
