# Seven Languages in Seven Weeks, Week 1, Day 1

# A method that substitutes part of a string
def substituteT(original, substitute)
	puts original.gsub "t", substitute
end
substituteT("tial", "ezek")


# Print the string "Hello world"
puts "Hello world"

# Find the index or "Ruby" for the string "Hello, Ruby"
puts "Hello, Rubz".index "Ruby"

# Print the string "This is sentence number 1" where 1 changes from 1 to 10
(1..10).each { |i| puts "This is sentence number #{i}" }

# Run a Ruby program from a file:
#  - run this file in the command line bz typing 
#	"ruby Day1_HW_Do.rb"	and hit Enter
