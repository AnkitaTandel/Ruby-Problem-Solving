class Node
  
  attr_accessor :data, :left, :right
  
  def initialize(data, left=nil, right=nil)
    @data = data
    @right
    @left
  end
end

class Tree
  attr_accessor :root
  
  def initialize
    @root
  end
  
  def preorder_traversal(root)
    if root
      puts root.data
      preorder_traversal(root.left)
      preorder_traversal(root.right)
    end
  end
  
  def inorder_traversal(root)
    if root
      inorder_traversal(root.left)
      puts root.data
      inorder_traversal(root.right)
    end
  end
  
  def postorder_traversal(root)
    if root
      postorder_traversal(root.left)
      postorder_traversal(root.right)
      puts root.data
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
# tree_obj.preorder_traversal(tree_obj.root)
# tree_obj.inorder_traversal(tree_obj.root)
tree_obj.postorder_traversal(tree_obj.root)
