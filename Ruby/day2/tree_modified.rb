#!/usr/bin/env ruby

# The Tree class was interesting, but it did not allow you to specify
# a new tree with a clean user interface. Let the initializer accept a
# nested structure with hashes and arrays. You should be able to
# specify a tree like this: {'grandpa' => { 'dad' => {'child 1' => {}, 'child
# 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.

#!/usr/bin/env ruby

class Tree
	attr_accessor :children, :node_name

	def initialize(tree)
		@node_name = tree.keys.first
		@children = []
		tree[@node_name].each_pair { |root, leave| @children.push(Tree.new({ root => leave })) }
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end

	def visit(&block)

		block.call self
	end
end

#old version: ruby_tree = Tree.new( "Ruby", [  Tree.new("Reia"),  Tree.new("MacRuby")])
#new version:

ruby_tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 
																		 'uncle' => {'child 3' => {}, 'child 4' => {} } } })

puts "Visiting a node"
ruby_tree.visit { |node| puts node.node_name }
puts

puts "Visiting entire tree"
ruby_tree.visit_all { |node| puts node.node_name }

