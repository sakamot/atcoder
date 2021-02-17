def qualification_simulator
  n, a, b = gets.chomp.split.map(&:to_i)
  s = gets.chomp.chars

  # a: 予選でi位の参加者が国内の学生
  # b: 予選でi位の参加者が海外の学生
  # c: 予選でi位の参加者がどちらでもない

  # 国内の学生は、現在予選の通過が確定した参加者がA+B人に満たなければ、予選を通過する
  # 海外の学生は、現在予選の通過が確定した参加者がA+B人に満たず、さらに海外の学生の中での順位がB位以内なら、予選を通過する

  ans = []
  b_count = 0
  ab_count = 0

  s.each do |si|
    if si == 'a' && ab_count < a+b
      ans << 'Yes'
      ab_count += 1
      next
    end

    b_count += 1 if si == 'b'

    if si == 'b' && ab_count < a+b && b_count <= b
      ans << 'Yes'
      ab_count += 1
      next
    end

    ans << 'No'
  end

  ans
end

puts qualification_simulator if $0 == __FILE__
