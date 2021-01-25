def main
  n = gets.chomp.to_i
  s = []
  n.times { s << gets.chomp }
  ans = 1

  s.each_with_index do |aa, i|
    ans = ans + 2**(i+1) if aa == 'OR'
  end

  ans
end

puts main if $0 == __FILE__
