class Tree
	attr_accessor :children, :node_name

	def initialize(name, children=[])
		if name.is_a?(Hash) then
			root_node = name.to_a.flatten	# or name.first
			name = root_node[0]
			children = root_node[1]
		end

		if children.is_a?(Hash) then
			children = children.map {|child_name, grandchildren| Tree.new(child_name, grandchildren)}
		end

		@node_name = name
		@children = children
	end

	def visit_all(&block)
		visit(&block)
		children.each {|c| c.visit_all(&block)}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new( "Ruby", 
	[Tree.new("Reia"), 
	Tree.new("MacRuby")] )

puts "Visiting a node"
ruby_tree.visit { |node| puts node.node_name }
puts

puts "Visiting entire tree"
ruby_tree.visit_all { |node| puts node.node_name }
puts

puts "tree test 2"
tree_test2 = Tree.new({"Ruby" => {"Reia" => {}, "MacRuby" => {} } })
tree_test2.visit_all { |node| p node.node_name }
puts

puts "test book example"
tree_test3 = Tree.new( {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 
	'uncle' => {'child3' => {}, 'child4' => {} 
	} } } )
tree_test3.visit_all { |node| p node.node_name }