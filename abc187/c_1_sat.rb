n=gets.chomp.to_i
a={}
n.times { a[gets.chomp] = true }
satisfiable = true

a.keys.each do |b|

  if a['!'+b]
    satisfiable = false
      puts b
      break
    end
end

puts 'satisfiable' if satisfiable
