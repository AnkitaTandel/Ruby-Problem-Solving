class Node
  
  attr_accessor :data, :left, :right
  
  def initialize(data, left_node = nil, right_node = nil)
    @data = data
    @left = left_node
    @right = right_node
  end
end

class Tree
  
  attr_accessor :root
  
  def initialize
    @root = root
  end
  
  def boundary_traversal(root)
    if root
      puts root.data
      left_boundary(root.left)
      leaves(root.left)
      leaves(root.right)
      right_boundary(root.right)
    end
  end
  
  def left_boundary(root)
    if root.left
      puts root.data
      left_boundary(root.left)
    elsif root.right
      puts root.data
      left_boundary(root.right)
    end
  end
  
  def right_boundary(root)
    if root.right
      puts root.data
      right_boundary(root.right)
    elsif root.left
      puts root.data
      right_boundary(root.left)
    end
  end
  
  def leaves(root)
     if root
       leaves(root.left)
       if root.left.nil? && root.right.nil?
         puts root.data
       end
       leaves(root.right)
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
tree_obj.root.left.right.right.right = Node.new(9)
tree_obj.boundary_traversal(tree_obj.root)

