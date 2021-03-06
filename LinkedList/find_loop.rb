class Node
  
  attr_accessor :data, :next
  
  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end
end

class LinkedList
  
  attr_reader :head
    
  def initialize
    @head
  end
  
  def push(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end
  
  def print
    current = @head
    until(current.nil?)
      puts "-> #{current.data}"
      current = current.next
    end
  end
  
  def find_loop_with_hash
    current = @head
    hash = {}
    flag = false
    until(current.nil?)
      if hash.key?(current)
        flag = true
        break
      end
      hash[current] = 1
      current = current.next
    end
    
    if flag == true
      puts "Loop Found"
    else
      puts "Loop not Found"
    end
  end
  
  def find_loop_with_ptrs
    slow_ptr, fast_ptr = @head, @head
    flag = false
    while(slow_ptr and fast_ptr and fast_ptr.next)
      if slow_ptr == fast_ptr
        flag = true
        break
      end
      slow_ptr = slow_ptr.next
      fast_ptr = fast_ptr.next.next
    end
    if flag == true
      puts "Loop Found"
    else
      puts "Loop not Found"
    end
  end
end

llist = LinkedList.new
llist.push(20)
llist.push(4)
llist.push(15)
llist.push(10)
llist.print

# llist.head.next.next.next.next = llist.head

# llist.find_loop_with_hash
# llist.find_loop_with_ptrs
