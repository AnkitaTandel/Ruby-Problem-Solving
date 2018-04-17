class Node
  
  attr_accessor :data, :left, :right
  
  def initialize(data, left = nil, right = nil)
    @data = data
    @right
    @left
  end
end

class Tree
  attr_accessor :root
  
  def initialize
    @root = nil
  end
  
  def leaf_node(root)
    if root
      leaf_node(root.left)
      if root.left.nil? and root.right.nil?
        puts root.data
      end
      leaf_node(root.right)
    end
  end
end

tree_obj = Tree.new
tree_obj.root = Node.new(1)
tree_obj.root.left = Node.new(2)
tree_obj.root.right = Node.new(3)
tree_obj.root.left.left = Node.new(4)
tree_obj.root.left.right = Node.new(5)
tree_obj.root.right.left = Node.new(6)
tree_obj.root.right.right = Node.new(7)
tree_obj.root.left.right.right = Node.new(8)
tree_obj.leaf_node(tree_obj.root)
