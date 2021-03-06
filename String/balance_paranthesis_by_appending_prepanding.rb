# Given a list of unbalanced parantheses, make it balanced. But you can only append or prepend parantheses, no other manipulation is allowed.

class String
  
  $hash = {'(' => ')', '{' => '}', '[' => ']'}
  def balance(str)
    open_set = ['(', '[', '{']
    
    array = str.split('')
    stack = []
    while(!array.empty?)
      if valid?(array[0], array[1])
        stack.push array.shift
        stack.push array.shift
      else
        symbol = array[0]
        if open_set.include?(symbol)
          close_symbol = $hash[symbol]
          stack.push array.shift
          stack.push close_symbol
        else
          open_symbol = $hash.select{|k,v| $hash[k] == symbol}.keys.first
          stack.push open_symbol
          stack.push array.shift
        end
      end
    end
    
    puts stack.join('')
      
  end
  
  def valid?(char1, char2)
    $hash[char1] == char2
  end
end

# s = String.new
# s.balance("]}{([")
# => '[]{}{}()[]'


