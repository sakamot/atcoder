def abc200_b
  n, k = gets.chomp.split.map(&:to_i)

  k.times do |i|
    if n % 200 == 0
      n = n / 200
      next
    end

    n = (n.to_s + '200').to_i
  end

  n
end

puts abc200_b
