f = open("task1.txt", 'r')
d = f.read.split(' ')
a = Array.new 
d.each do |b|
	if b.length <=3
	else
		a.push(b)
	end
end
b = a.sort
c=b.join(" ")
puts "opening"
target =open("task11.txt","w")
puts "bye"
target.write(c)
target.close




