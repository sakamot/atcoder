def go_to_jail
  n = gets.chomp.to_i
  d = []
  n.times { d << gets.chomp.split(' ').map(&:to_i) }
  c = 0

  d.each do |a|
    a[0] == a[1] ? c += 1 : c = 0
    return 'Yes' if c >= 3
  end

  'No'
end

puts go_to_jail if $0 == __FILE__
