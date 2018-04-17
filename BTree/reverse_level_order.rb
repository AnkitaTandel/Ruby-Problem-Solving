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
    @root
  end
     
  def level_order_reverse(root)
    if root.nil?
      return
    end
    queue = []
    stack = []
    queue.push(root)
    while(!queue.empty?)
      root = queue.shift
      stack.push(root.data)
      unless root.right.nil?
        queue.push(root.right)
      end
      unless root.left.nil?
        queue.push(root.left)
      end
    end
    # puts stack.size
    while(!stack.empty?)
      m = stack.pop
      puts m
    end
    # puts stack
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
tree_obj.level_order_reverse(tree_obj.root)

