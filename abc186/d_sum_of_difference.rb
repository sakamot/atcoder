n=gets.chomp.to_i
a=gets.chomp.split(' ').map(&:to_i)

a= a.sort()
s=[0]
sum=0

# 累積和
for i in 0..n-1
  s << s[i]+a[i]
end

for x in 0..a.length-1
  sum += x*a[x]-s[x]
end

puts sum
