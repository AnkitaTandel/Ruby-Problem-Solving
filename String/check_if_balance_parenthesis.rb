class String
  
  def expression_valid?(left, right)
    left == '(' && right == ')' || left == '{' && right == '}' || left == '[' && right == ']'
  end

  def properly_nested?(expression)
    stack = []
    expression.split('').each do |symbol|
      if ['(', '[', '{'].include?(symbol)
        stack.push symbol
      else
        return if stack.empty?
        last = stack.pop
        return expression_valid?(last, symbol)
      end
    end
    stack.empty?
  end
  
end
