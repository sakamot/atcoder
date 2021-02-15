def bishop
  h, w = gets.chomp.split.map(&:to_i)

  # h,w どちらかが1の時は斜めに動かせないので1
  return 1 if h == 1 || w == 1

  (Rational(w, 2) * h).ceil
end

puts bishop if $0 == __FILE__
