def collatz_problem
  s = gets.chomp.to_i

  ai = [s]
  i = 1
  ans = 0

  while
    n = if (ai[i-1] & 1) == 1
          ai[i-1] * 3 + 1
        else
          ai[i-1] / 2
        end

    if ai.count(n) >= 1
      ans = i+1
      break
    end

    ai << n
    i+=1
  end

  ans
end

puts collatz_problem if $0 == __FILE__
