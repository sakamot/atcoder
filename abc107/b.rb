def grid_compression
  h,w = gets.chomp.split.map(&:to_i)
  a = []
  h.times { a << gets.chomp.chars }

  display = []

  (0..h-1).each do |i|
    display << a[i] if a[i].uniq != ['.']
  end

  (0..w-1).each do |j|
    if a.map {|aw| aw[j] }.uniq == ['.']
      display.map! do |d|
        d[j] = nil
        d
      end
    end
  end

  display.map(&:join)

end

puts grid_compression
