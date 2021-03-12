def minesweepwe
  h, w = gets.chomp.split.map(&:to_i)
  s = []
  h.times { s << gets.chomp.chars }
  ans = Array.new(h).map{Array.new(w,0)}


  (0..h-1).each do |i|
    next if s[i].find{|si| si == '#' } == nil

    (0..w-1).each do |j|
      next if s[i][j] != '#'

      ans[i][j] = '#'

      (([i-1,0].max)..([i+1,h-1].min)).each do |a|
        (([j-1,0].max)..([j+1, w-1].min)).each do |b|
          ans[a][b] += 1 if ans[a][b] != '#'
        end
      end
    end
  end

  ans.map(&:join)
end

puts minesweepwe
