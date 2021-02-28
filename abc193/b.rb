def play_snuke
  n = gets.chomp.to_i
  apx = []
  n.times { apx << gets.chomp.split.map(&:to_i) }
  ans = 10**9 + 1

  apx.each do |apxi|
    a,p,x = apxi

    if x-a > 0
      ans = [p, ans].min
    end
  end

  ans == 10**9 + 1 ? -1 : ans
end

puts play_snuke
