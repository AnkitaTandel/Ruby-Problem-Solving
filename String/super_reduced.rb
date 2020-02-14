# Steve has a string of lowercase characters in range ascii[‘a’..’z’]. He wants to reduce the string to its shortest length by doing a series of operations. In each operation he selects a pair of adjacent lowercase letters that match, and he deletes them. For instance, the string aab could be shortened to b in one operation.

# Steve’s task is to delete as many characters as possible using this method and print the resulting string. If the final string is empty, print Empty String
#

# input1: aaabccddd
# output1: abd  # (aaabccddd → abccddd → abddd → abd)

# input2: baab
# output2: Empty String # (baab → aa →  '' → Empty String)

def super_reduced_string(s)
  
  new_string = ''
  count, occurance = 0, 0
  current_index = 0
  str_arr = s.split('')
  while(current_index < str_arr.size) do
      while(str_arr[current_index] == str_arr[count])
          count += 1
          occurance += 1
      end
      
      if occurance.odd? || occurance.zero?
        new_string += str_arr[current_index]
      end
      occurance = 0
      current_index = count
  end
  if s == new_string
    return new_string.empty? ? 'Empty String' : s
  else
    super_reduced_string(new_string)
  end
end

super_reduced_string('zztqooauhujtmxnsbzpykwlvpfyqijvdhuhiroodmuxiobyvwwxupqwydkpeebxmfvxhgicuzdealkgxlfmjiucasokrdznmtlwh')

