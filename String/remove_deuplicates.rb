string = 'geeksforgeek'
string_array = string.split('')
hash = {}
string_array.each do |char|
  unless hash.has_key?(char)
    hash[char] = 1
  end
end
puts hash.keys.join('')


