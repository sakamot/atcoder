def alter_alter
  n = gets.chomp.to_i
  c = gets.chomp.chars

  # 赤石の数を数える
  r_count = c.tally["R"] || 0

  # 先頭から赤石に変える必要がある個数分の間にある白石の数が答えになる
  c[0...r_count].tally["W"] || 0
end

puts alter_alter if $0 == __FILE__
