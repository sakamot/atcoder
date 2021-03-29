def choose_integers
  a,b,c = gets.split(' ').map(&:to_i)
  ans = 'NO'

  i= 0
  while i < b do
    if a*i % b == c
      ans = 'YES'
      break
    end

    i += 1
  end

  ans
end

puts choose_integers
