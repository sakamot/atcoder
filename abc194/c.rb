def squared_error
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i).tally
  sum = 0

  a.keys.combination(2) do |aa, b|
    sum += (aa-b)**2 * (a[aa] *a[b])
  end

  sum
end

puts squared_error
