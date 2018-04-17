class Node
  attr_accessor :value, :next
  def initialize(data, next_node=nil)
    @value = data
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head

  def intialize
    @head
  end

  def push(element)
    new_node = Node.new(element)
    new_node.next = @head
    @head = new_node
  end

  def print_list
    current = @head
    while(current)
      puts current.value
      current = current.next
    end
  end

  def reverse
    next_node, prev_node = nil, nil
    current = @head
    while(current)
      next_node = current.next
      current.next = prev_node
      prev_node = current
      current = next_node
    end
    @head = prev_node
  end
end

# list = LinkedList.new
# list.push(3)
# list.push(2)
# list.push(1)
# list.print_list
# list.reverse
# list.print_list
