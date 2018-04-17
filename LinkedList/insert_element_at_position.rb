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

  def insert_at(position, val)
    count = 1
    next_node = nil
    prev = nil
    current = @head
    if position == 0
      new_node = Node.new(val)
      new_node.next = current
      @head = new_node
    else
      while(current)
        prev = current
        current = current.next
        if(count == position)
          new_node = Node.new(val)
          new_node.next = current
          prev.next = new_node
        end
        count += 1
      end
    end
  end
end

# list = LinkedList.new
# list.push(1)
# list.push(2)
# list.push(3)
# list.insert_at(0, 10)
# list.print_list


