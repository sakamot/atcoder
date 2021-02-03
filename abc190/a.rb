def very_very_primitive_game
  a, b, c = gets.chomp.split.map(&:to_i)
  d = a - b

  return 'Takahashi' if d > 0
  return 'Aoki' if d < 0

  if d == 0
    return 'Aoki' if c == 0
    return 'Takahashi'
  end
end

puts very_very_primitive_game if $0 == __FILE__
