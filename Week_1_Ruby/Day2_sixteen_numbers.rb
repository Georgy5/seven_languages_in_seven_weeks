# Do
# 1. Print the contents of an array of sixteen numbers,
# four numbers at a time, using just each.
array16 = (1..16).to_a

count = 0

array16.each do |a|
	count += 1
	if count%4 == 0 then puts "#{a},"
	else print "#{a},"
	end
end

puts
# OR

numbers = [*(1..16)]
numbers.each do |number|
	p numbers[((number-4)...number)] if number % 4 == 0
end

puts
# Now do the samewith each_slice in Enumerable
numbers.each_slice(4) { |quad| p quad } 