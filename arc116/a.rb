require 'prime'

def odd_vs_even
  t = gets.chomp.to_i
  c = []
  t.times { c << gets.chomp.to_i }
  ans = []
  ansh = {0 => 'Even', 1 => 'Odd', 2 => 'Same', 3 => 'Odd'}

  c.each do |ci|
    ans << ansh[ci%4]
  end

  ans
end

puts odd_vs_even
