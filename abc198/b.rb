def palindrome_with_leading_zeros
  n = gets.chomp
  n_rev = n.reverse

  return 'Yes' if n == n_rev

  c = 0
  n.length.times do |i|
    n_rev[i] == '0' ? c += 1 : break
  end

  return 'Yes' if ('0'*c + n) == n_rev + '0'*c

  return 'No'
end

puts palindrome_with_leading_zeros
