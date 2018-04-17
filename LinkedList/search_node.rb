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
  
  def push(element)
    new_node = Node.new(element)
    new_node.next = @head
    @head = new_node
  end
  
  def print
    current = head
    while(current)
      puts current.value
      current = current.next
    end
  end
  
  def search(element)
    current = head
    while(current)
      if current.value == element
        return true
        break
      else
        return false
      end
      current = current.next
    end
  end
end

# list = LinkedList.new
# list.push(1)
# list.push(2)
# list.print
# list.search(6)
