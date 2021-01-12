def almost_gcd
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  ans = 0
  max = 0

  (2..1001).to_a.each do |num|
    score = a.select { |b| b % num == 0 }.size
    if score > max
      max = score
      ans = num
    end
  end

  ans
end

puts almost_gcd
