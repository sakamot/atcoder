def alcoholic
  n,x = gets.chomp.split(' ').map(&:to_i)
  vp = []
  n.times { vp << gets.chomp.split(' ').map(&:to_i) }
  s = [0]
  ans = -1

  vp.each_with_index do |aa, i|
    v, p = aa
    s << s[-1] + (v * Rational(p, 100))

    if s[-1].to_f > x
      ans = i+1
      break
    end
  end

  ans
end

puts alcoholic if $0 == __FILE__
