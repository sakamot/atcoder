def abc202_b
  s = gets.chomp

  s.reverse.gsub(/6|9/, '6'=> '9', '9'=> '6')
end

puts abc202_b
