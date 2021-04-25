def ipfl
  n = gets.chomp.to_i
  s = gets.chomp.chars
  q = gets.chomp.to_i
  tab = []
  q.times { tab << gets.chomp.split.map(&:to_i) }
  tt = false

  tab.each do |tabi|
    t,a,b = tabi

    if t == 2
      tt = !tt
      next
    end

    if tt
      a = (a > n ? a-n-1 : a+n-1)
      b = (b > n ? b-n-1 : b+n-1)
      ss = s[a]
      s[a] = s[b]
      s[b] = ss
    else
      ss = s[a-1]
      s[a-1] = s[b-1]
      s[b-1] = ss
    end
  end

  tt ? (s[n..-1] + s[0..n-1]).join : s.join
end

puts ipfl
