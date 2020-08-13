require_relative 'tree.rb'
require_relative 'node.rb'

new_tree = Tree.new(Array.new(15) { rand(1..100) })
p "Balanced?   => #{new_tree.balanced?}"
p "Depth       => #{new_tree.depth}"
p "Level order => #{new_tree.level_order}"
p "Preorder    => #{new_tree.preorder}"
p "Postorder   => #{new_tree.postorder}"
p "Inorder     => #{new_tree.inorder}"
puts
new_tree.pretty_print
puts

p "Unbalancing tree"
5.times { new_tree.insert(rand(101..200)) }

p "Balanced => #{new_tree.balanced?}"
puts
new_tree.pretty_print
puts

p "Rebalance tree"
new_tree.rebalance
p "Balanced?   => #{new_tree.balanced?}"
p "Depth       => #{new_tree.depth}"
p "Level order => #{new_tree.level_order}"
p "Preorder    => #{new_tree.preorder}"
p "Postorder   => #{new_tree.postorder}"
p "Inorder     => #{new_tree.inorder}"
puts
new_tree.pretty_print
