def many_oranges
  #a,b: g
  #w: kg
  a, b, w = gets.chomp.split.map(&:to_i)
  w = w*1000
  max = 0
  min = w

  (1..w).each do |i|
    if w/i.to_f >= a && w/i.to_f <= b
      max = [max, i].max
      min = [min, i].min
    end
  end

  if max == 0 && min == w
    'UNSATISFIABLE'
  else
    "#{min} #{max}"
  end
end

puts many_oranges
