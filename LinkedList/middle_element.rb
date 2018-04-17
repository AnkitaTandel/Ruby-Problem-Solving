class Node
  attr_accessor :value, :next
  def initialize(data)
    @value = data
    @next
  end
end

class LinkedList
  attr_accessor :head

  def initialize
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

  def find_middle
    slow_pointer = @head
    fast_pointer = @head
    current = @head
    while(slow_pointer && fast_pointer && fast_pointer.next)
      slow_pointer = slow_pointer.next
      fast_pointer = fast_pointer.next.next
    end
    puts "Middle element is #{slow_pointer.value}"
  end
end

# ll = LinkedList.new
# ll.push(1)
# ll.push(2)
# ll.push(3)
# ll.push(4)
# ll.push(5)
# ll.push(5)
# ll.print_list
# ll.find_middle


