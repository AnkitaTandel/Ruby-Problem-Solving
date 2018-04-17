class Node

  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end
end

class LinkedList

  attr_accessor :head

  def push(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  def print
    current = @head
    until(current.nil?)
      puts current.data
      current = current.next
    end
  end

  def palindrome?
    stack = []
    current = @head
    until(current.nil?)
      stack.push(current.data)
      current = current.next
    end

    current_new = @head
    until(current_new.nil?)
      unless current_new.data == stack.pop
        return false
        break
      end
      current_new = current_new.next
    end
    return true
  end
end

# llist = LinkedList.new
# llist.push(1)
# llist.push(2)
# llist.push(3)
# llist.push(4)
# llist.push(3)
# llist.push(8)
# llist.push(1)

# llist.print
# llist.palindrome?





