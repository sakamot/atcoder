a,b=gets.chomp.split(' ').map(&:to_s)
puts [a.split('').map(&:to_i).sum, b.split('').map(&:to_i).sum].max
