def cut_and_count
  n = gets.chomp.to_i
  s = gets.chomp.chars
  max = 0

  (0..n-1).each do |nn|
    max = [(s[0..nn].tally.keys & s[nn+1..n-1].tally.keys).length, max].max
  end

  max
end

puts cut_and_count
