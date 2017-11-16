str= "aabbbaa"
count=Hash.new(0)
str.each_char do |c|
if count.key?(c)
count[c] += 1
else
count[c] = 1
end
end
puts count
