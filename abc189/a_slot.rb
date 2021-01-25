def slot
  gets.chomp.split('').tally.length == 1 ? 'Won' : 'Lost'
end

puts slot
