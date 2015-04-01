# Seven Languages in Seven Weeks, Week 1, Day 2

# Find out how to access files with and without code blocks.
# What is the benefit of the code block?
File.write('output', 'And now we write without a code block')
	# without a code block you need to close the File manually
#File.close()
open('output') {|f| puts f.read}

File.open("output", "w") { |file|
	file.puts "Code blocks automatically close() "}
	# using code blocks is safer and less error-prone


# How would you translate a hash to an array?    # .to_a
myHash = {karl: 7, nick: 12, bea: 9, away_team: 00}
print "hash: "; p myHash
print "array: "; p myHash.to_a.flatten
# Can you translate arrays to hashes?
myArray_1 = myHash.to_a
print "array 1 to hash: "; p Hash[myArray_1]
myArray_2 = myHash.to_a.flatten
print "array 2 to hash: "; p Hash[myArray_2] #no result
print "array 2 to hash: "; p Hash[*myArray_2]


# Can you iterate through a hash?
myHash.each { |key, value| puts "key: '#{key}', value: '#{value}'" }


# You can use arrays as stacks. What other common
# data structures do arrays support?

#queue
puts "queue/deque: "
deque = [].push("1").push("2")
deque.unshift("a").unshift("b")

p deque
puts deque.shift
puts deque.shift
puts deque.pop
puts deque.pop

#list
puts "list: "
list = [1,2,3,4,5].insert(3, "c")
puts list
puts "removed: " + list.delete("c")

#sets
puts "(rudimentary) bag/set"
bag = [1,2,3,4,5]
p bag
set = bag.uniq
other_set = [3,5]
p set
p set & other_set

#matrix
puts "(rudimentary) matrix"
matrix = [[1,2,3], [4,5,6],[7,8,9]]
p matrix
p matrix.transpose


# Do
# 1. Print the contents of an array of sixteen numbers,
# four numbers at a time, using just each.
numbers = [*(1..16)]
numbers.each do |number|
	puts numbers[((number-4)...number)] if number % 4 == 0
end
# Now do the samewith each_slice in Enumerable
numbers.each_slice(4) { |quad| puts quad } 

# 2. The Tree class ...
# Let the initializer accept a nested structure of hashes.
# You should be able to specifiy a tree like this:
# 	{'grandpa' => {'dad' => {'child1' => {}. 'child2' => {}}, 
# 	'uncle' => {'child3' => {}, 'child4' => {} } } }

	# see answer in seperate file "Day2_Tree_class_question.rb"

# 3. Write a simple grep that will print the lines of a file
# having any occurances of a phrase in that line.
# You will need to do a simple regular expression match and 
# read lines from a file.
def rbgrep(pattern, filename)
	regexp = Regexp.new(pattern)
	File.foreach(filename).with_index { |line, line_num| 
		puts "#{line_num}: #{line}" if regexp =~ line }
end

rbgrep("guitar", "wikipedia_page.txt")