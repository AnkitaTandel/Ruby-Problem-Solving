# Delete all the nodes from the list that are greater than k

class Node
  attr_accessor :data, :next
  
  def initialize(data, next_node = nil)
    @data = data
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
    until(current.nil?)
      print "->#{current.data}"
      current = current.next
    end
  end
  
  def delete_nodes_greater_than(value)
    current = @head
    prev = @head
    # delete head node if node data is greated than value
    while(current.next && current.data > value)
      @head = current.next
      current = @head
    end
    
    
    temp = @head
    while(!current.nil?)
      prev = temp
      temp = temp.next
      # delete middle nodes
      if(temp.data > value)
        current.next = temp.next
      end
      # delete last node if node data is greated than value
      if current.next.nil? && temp.data > value
        prev.next = nil
      end
      current = current.next
    end
  end

end

list = LinkedList.new
list.push(11)
list.push(2)
list.push(10)
list.push(3)
list.push(7)
list.push(8)
list.push(9)
list.print_list
puts ''
list.delete_nodes_greater_than(7)
list.print_list

# output
# ->9->8->7->3->10->2->11
# ->7->3->2

