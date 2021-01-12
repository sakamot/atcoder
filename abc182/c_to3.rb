def to3
  n = gets.chomp.chars.map(&:to_i)

  # bit全探索(N個のものから、いくつか選ぶ方法を全列挙して調べ上げる)

  # (1<<n)は2^n
  # n.size == 2の時 sは[1, 0], [1], [0]
  # n.size == 3の時 sは[2, 1, 0], [2, 1], [2, 0], [2], [1, 0], [1], [0]
  ((1 << n.size) - 1).downto(1) do |bit|
    s = []

    (n.size - 1).downto(0) do |i|
      if (bit & (1 << i)) != 0
        s << i
      end
    end

    p s
    # 正の整数が3の倍数であることと、その数のすべての桁の和が3の倍数であることは同値
    return n.size - s.size if s.map { |a| n[a] }.sum % 3 == 0
  end

  return -1
end

puts to3

