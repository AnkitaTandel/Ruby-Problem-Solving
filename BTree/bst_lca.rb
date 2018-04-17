class Node
  
  attr_accessor :data, :left, :right
  
  def initialize(data, left_node = nil, right_node = nil)
    @data = data
    @left = left_node
    @right = right_node
  end
end

class Bst
  
  attr_accessor :root
  
  def initialize
    @root = root
  end
  
  def lca(root, n1, n2)
    if root.data < n1 && root.data < n2
      lca(root.right, n1, n2)
    elsif root.data > n1 && root.data > n2
      lca(root.left, n1, n2)
    else
      return root.data
    end
  end
end
tree = Bst.new
tree.root = Node.new(10)
tree.root.left = Node.new(5)
tree.root.left.left = Node.new(-1)
tree.root.left.right = Node.new(7)
tree.root.right = Node.new(12)
tree.root.right.left = Node.new(11)
tree.root.right.right = Node.new(13)
tree.lca(tree.root, 5, 7)

