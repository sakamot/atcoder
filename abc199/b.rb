def intersection
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)
  b = gets.chomp.split.map(&:to_i)

  ans = (1..1000).to_a

  a.zip(b).each do |ai, bi|
    ans = (ans & (ai..bi).to_a)
  end

  ans.count
end

puts intersection
