def together
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  a_sub = a.map{|ai| ai - 1}
  a_plus = a.map{|ai| ai + 1}

  (a+a_sub+a_plus).tally.max_by{|ai| ai[1]}[1]
end

puts together
