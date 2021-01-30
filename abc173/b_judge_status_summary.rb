def judge_status_summary
  r_case = ['AC', 'WA', 'TLE', 'RE']
  n = gets.chomp.to_i
  r = []

  n.times do
    r << gets.chomp
  end

  r_tally = r.tally

  r_case.map do |a|
    "#{a} x #{r_tally[a] || 0}"
  end
end

puts judge_status_summary if $0 == __FILE__
