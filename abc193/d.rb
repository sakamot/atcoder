def poker
  k = gets.chomp.to_i
  s = gets.chomp.split('').map(&:to_i)
  t = gets.chomp.split('').map(&:to_i)

  # c: カードの残り枚数
  c = Array.new(10, k)
  c[0] = 0 # 0のカードはないので0枚にしておく
  4.times do |i|
    c[s[i]] -= 1
    c[t[i]] -= 1
  end

  count = 0

  (1..9).each do |a|
    s[-1] = a
    sscore = score(s)
    (1..9).each do |b|
      t[-1] = b
      if sscore > score(t)
        count += (a==b) ? c[a]*(c[a]-1) : (c[a]*c[b])
      end
    end
  end

  csum = c.sum
  count.to_f / (csum * (csum - 1))
end

def score(ary)
  at = ary.tally
  s = 0
  (1..9).each { |n| s += n * (10**(at[n].to_i)) }
  s
end

puts poker
