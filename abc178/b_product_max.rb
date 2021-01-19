def product_max
  a, b, c, d = gets.chomp.split(' ').map(&:to_i)

  ([a, b].zip([c, d]) + [a, b].zip([d, c])).map{|x, y| x * y}.max
end

puts product_max if $0 == __FILE__
