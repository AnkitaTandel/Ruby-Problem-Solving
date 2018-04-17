class Node
  attr_accessor :value, :next
  def initialize(data, next_node = nil)
    @value = data
    @next = next_node
  end
end

class LinkedList
  
  attr_accessor :head
  
  def initialize
    @head
  end
  
  def push(data)
    new_node = Node.new data
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
  
  def swap
    current = @head
    while(current && current.next)
      current.value, current.next.value = current.next.value, current.value
      current = current.next.next
    end
  end
end

# list = LinkedList.new
# [10, 20, 30, 40, 50].each{ |e| list.push e}
# list.print_list
# list.swap
# list.print_list














