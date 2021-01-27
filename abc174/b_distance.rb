def main
  n, d = gets.chomp.split.map(&:to_i)
  xy = []
  n.times { xy << gets.chomp.split.map(&:to_i) }
  ans = 0

  xy.each do |x, y|
    ans += 1 if d >= Math.sqrt(x**2 + y**2)
  end

  ans
end

puts main if $0 == __FILE__
