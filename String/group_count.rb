# 1) Run length encoding
# Input : aaaaaabb 
# Output :  a5b2
# Input : aaaaabccc
# Output :  a5bc3

str = 'aaaaabbaabbd'
count = 0
current_hash = {}
array = []
char_array = str.split('')
char_array.each_with_index do |char, index|
  
  if char == char_array[index + 1]
    if current_hash.has_key?(char)
      current_hash[char] = current_hash[char] + 1
    else
      current_hash[char] = 2
    end
    count += 1
  else
    if count == 0
      current_hash[char] = 1
    end
    array << current_hash
    current_hash = {}
    count = 0
  end
end

str = ''
array.each do |e|
  h = e.first
  str << e.keys.join('')
  str << e.values.join('')
end
puts str
