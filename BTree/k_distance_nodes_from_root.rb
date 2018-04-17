class Node
  
  attr_accessor :value, :left, :right
  def initialize(data, left_node = nil, right_node = nil)
    @value = data
    @left = left_node
    @right = right_node
  end
end

class Tree
  
  attr_accessor :root
  
  def initialize
    @root
  end
  
  def print_k_distance_from_root(root, k)
    if root.nil?
      return 0
    end
    
    if k == 0
      puts root.value
    end
    
    print_k_distance_from_root(root.left, k-1)
    print_k_distance_from_root(root.right, k-1)
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
tree_obj.root.left.right.right.right = Node.new(9)
tree_obj.print_k_distance_from_root(tree_obj.root, 3)

