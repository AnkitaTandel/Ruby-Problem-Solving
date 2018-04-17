class Node
  attr_accessor :value, :left, :right
  
  def initialize(data, left_child= nil, right_child = nil)
    @value = data
    @left = left_child
    @right = right_child
  end
end

class Tree
  attr_accessor :root
  def initialize
    @root
  end
  
  def root_to_node_sum(root, sum, result)
    if root.nil?
      return true
    end
    if root.left.nil? and root.right.nil?
      if root.value == sum
        result.push(root.value)
        return true
      else
        return false
      end
    end
    
    if root_to_node_sum(root.left, sum-root.value, result)
      result.push(root.value)
      return true
    end
    
    if root_to_node_sum(root.right, sum - root.value, result)
      result.push(root.value)
      return true
    end
  end
end

tree = Tree.new
tree.root = Node.new(1)
tree.root.left = Node.new(2)
tree.root.right = Node.new(3)
tree.root.left.left = Node.new(4)
tree.root.left.right = Node.new(5)
tree.root.left.right = Node.new(5)
tree.root.left.right = Node.new(5)
tree.root.right.left = Node.new(6)
tree.root.right.right = Node.new(7)
tree.root.left.right.right = Node.new(8)
result = []
sum = 8
tree.root_to_node_sum(tree.root, sum, result)
puts result

