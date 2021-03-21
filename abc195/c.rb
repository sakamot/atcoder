def comma
  n = gets.chomp.to_i
  ans = []

  (1..10).each do |i|
    break if n.to_s.size <= i*3

    if n.to_s.size <= (i+1)*3
      ans << (n - ('999'*i).to_i) * i
    else
      ans << ('999' + '000'*i).to_i * i
    end
  end

  ans.sum
end

puts comma
