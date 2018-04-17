# return pair of elements from array having sum equal to target
# if array is [1, 4, 45, 6, 10, -8, 10, 41] then result should pe [45, 6], [10, 41]

array = [1, 4, 45, 6, 10, -8, 10, 41]
target = 51
result = []
array.each do |element|
  temp = target - element
  if array.include?(temp) and temp != element
    array.delete(element)
    result << [temp, element]
  end
end
result
