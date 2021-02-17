def go_to_school
  n = gets.chomp.to_i

  a = {}

  gets.chomp.split.each_with_index do |ai, i|
    a[ai.to_i] = i + 1
  end

  a.sort.map{|aa| aa[1]}.join(' ')
end

puts go_to_school if $0 == __FILE__
