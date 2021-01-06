n, m, t = gets.chomp.split(" ").map(&:to_i)
ab = []
m.times { ab << gets.chomp.split(" ").map(&:to_i) }

# n: バッテリー要領
# m: カフェに行く回数
# t: 帰宅する時刻
# ab: [カフェに入る時刻, カフェを出る時刻]

r = n - ab[0][0]

if r <= 0
  puts 'No'
  exit
end

ab << [t, 0]

for i in 0..(ab.length - 2)
  r += (ab[i][1] - ab[i][0])
  r = n if r > n
  r -= ab[i+1][0] - ab[i][1]

  if r <= 0
    puts 'No'
    exit
  end
end

puts 'Yes'
