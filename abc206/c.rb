require 'minitest/autorun'

def swappable(n, a)
  ans = (n * (n - 1)) / 2

  a.tally.each do |k, v|
    next if v < 2

    ans -= ((v * (v - 1)) / 2)
  end

  ans
end

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
puts swappable(n, a)

class SwappableTest < Minitest::Test
  def test_swappable_1
    assert_output("2\n") { puts swappable(3, [1, 7, 1]) }
  end

  def test_swappable_2
    assert_output("45\n") {
      puts swappable(10, [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000])
    }
  end

  def test_swappable_3
    assert_output("173\n") {
      puts swappable(20, [7, 8, 1, 1, 4, 9, 9, 6, 8, 2, 4, 1, 1, 9, 5, 5, 5, 3, 6, 4])
    }
  end
end
