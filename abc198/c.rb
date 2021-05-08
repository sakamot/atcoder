def compass_walking
  r,x,y = gets.chomp.split.map(&:to_i)

  d = Math.sqrt(x**2+y**2)
  return 1 if d == r
  return 2 if d <= 2*r
  return (d/r).ceil
end

puts compass_walking
