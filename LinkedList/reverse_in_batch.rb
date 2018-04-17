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
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  def print_list
    current = @head
    while(current)
      print "->#{current.value}"
      current = current.next
    end
    puts
  end

  def reverse(head = @head, n)
    next_node = nil
    prev_node = nil
    current = head
    count = 0
    while(current && count < n)
      next_node = current.next
      current.next = prev_node
      prev_node = current
      current = next_node
      count += 1
    end
    if next_node
      head.next = reverse(next_node, n)
    end
    @head = prev_node
  end
end

# list = LinkedList.new
# [1,2,3,4,5,6,7,8,9].each{|e| list.push(e)}
# list.print_list
# list.reverse(3)
# list.print_list
