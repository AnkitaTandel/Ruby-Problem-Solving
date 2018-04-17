def equal?(array1, array2)
  return false if array1.length != array2.length
  hash = {}
  array1.each do |e|
    if hash.key?(e)
      hash[e]  = hash[e] + 1
    else
      hash[e] = 1
    end
  end
  
  array2.each do |e|
    if hash[e]
      hash[e] = hash[e] - 1
    end
  end
  flag = true
  hash.values.each do |n|
    flag = false if n != 0
    break unless flag
  end
  flag
end

# equal?([10, 20, 30, 30, 5], [10, 20, 5, 30, 30]) => true
# equal?([10, 20, 30, 30, 5], [10, 20, 5, 30, 20]) => false
# equal?([1, 1, 7], [1, 7, 7]) => false
