def b
  s = gets.chomp.chars
  ans = 'Yes'

  s.each_with_index do |si, i|
    if (i&1) == 0
      next if /[a-z]/.match?(si)
    else
      next if /[A-Z]/.match?(si)
    end

    ans = 'No'
    break
  end

  ans
end

puts b
