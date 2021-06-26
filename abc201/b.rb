def do_you_know_the_second_highest_mountain?
  n = gets.chomp.to_i
  st = []
  n.times { st << gets.chomp.split.tap{|a| a[1] = a[1].to_i} }

  st.sort {|a,b| b[1] <=> a[1]}[1][0]
end

puts do_you_know_the_second_highest_mountain?
