def visibility
  h, w, x, y = gets.chomp.split.map(&:to_i)
  s = []
  h.times { s << gets.chomp.chars }
  ans = 1
  x -= 1
  y -= 1

  di = [-1, 0, 1, 0]
  dy = [0, -1, 0, 1]

  (0..3).each do |v|
    ni = x
    nj = y
    while true
      ni += di[v]
      nj += dy[v]

      break if (ni < 0 || nj < 0 || ni >= h || nj >= w)
      break if s[ni][nj] == '#'
      ans += 1
    end
  end

  ans
end

puts visibility
