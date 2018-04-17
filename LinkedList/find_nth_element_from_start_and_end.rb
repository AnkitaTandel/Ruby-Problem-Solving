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

  def push(val)
    new_node = Node.new(val)
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

  def n_th_element_from_first(target)
    count = 1
    current = @head
    while(current)
      if count == target
        puts "value at target #{target} place is : #{current.value}"
        break
      end
      current = current.next
      count += 1
    end
  end

  def n_th_element_from_last(target)
    main_ptr = @head
    ref_ptr = @head
    (0...target).each do
      ref_ptr = ref_ptr.next
    end
    while(ref_ptr)
      main_ptr = main_ptr.next
      ref_ptr = ref_ptr.next
    end
    puts main_ptr.value
  end

  def node_from_last(target)
    current = @head
    length = 0
    until(current.nil?)
      length += 1
      current = current.next
    end

    position_from_first = length - target
    current_new = @head

    position_from_first.times do
      current_new = current_new.next
    end

    current_new.data
  end
end

# list = LinkedList.new
# [1,2,3,4,5,6].each{|e| list.push(e)}
# list.print_list
# list.n_th_element_from_first(3)
# list.n_th_element_from_last(2)

