def cookie_exchanges
  a, b, c = gets.chomp.split.map(&:to_i)

  (0..1000).each do |i|
    return i if [(a & 1), (b & 1), (c & 1)].any?(1)

    ta = (b + c) / 2
    tb = (a + c) / 2
    tc = (a + b) / 2

    a, b, c = ta, tb, tc
  end

  return -1
end

puts cookie_exchanges if $0 == __FILE__
