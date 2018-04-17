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

  def length
    count = 0
    current = @head
    while(current)
      count += 1
      current = current.next
    end
    puts "Length of the link list is #{count}"
  end
end

# list = LinkedList.new
# list.push(1)
# list.push(2)
# list.push(3)
# list.print_list
# list.length


