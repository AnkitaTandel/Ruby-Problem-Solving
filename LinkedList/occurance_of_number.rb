class Node
  attr_accessor :value, :next
  def initialize(data, next_node=nil)
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

  def count(number)
    curr = @head
    count = 0
    while(curr)
      if curr.value == number
        count += 1
      end
      curr = curr.next
    end
    puts count
  end
end

# list = LinkedList.new
# [1,2,3,2,1,4,1,6,1,2,3,1].each{ |e| list.push e}
# list.print_list
# list.count(1)















