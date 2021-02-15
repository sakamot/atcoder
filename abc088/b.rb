def card_game_for_two
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  alice = 0
  bob = 0

  a.sort!.reverse!

  a.each_with_index do |ai, i|
    if i % 2 == 0
      alice += ai
      next
    end

    bob += ai
  end

  alice - bob
end

puts card_game_for_two if $0 == __FILE__
