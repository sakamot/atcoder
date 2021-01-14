def hachi
  s = gets.chomp.chars

  if s.size <= 3
    s.permutation(s.size).each do |a|
      return 'Yes' if a.join().to_i % 8 == 0
    end

    return 'No'
  end

  # 倍数の判定法
  # 8の倍数は下3桁が8の倍数なら8の倍数になる

  # 3桁の8の倍数
  h = (1..124).to_a.map{|a| (a*8).to_s.rjust(3, '0').chars}
  h << ['0'] * 3

  st = s.tally

  h.each do |b|
    t = b.tally
    return 'Yes' if t.keys.map{ |a| st[a].to_i >= t[a] }.all?
  end

  'No'
end

puts hachi if $0 == __FILE__
