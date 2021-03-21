def round_down
  x = gets.chomp

  x.gsub(/(\..*)/, '')
end

puts round_down
