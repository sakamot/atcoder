def health_m_death
  m, h = gets.chomp.split.map(&:to_i)

  (h % m) == 0 ? 'Yes' : 'No'
end

puts health_m_death
