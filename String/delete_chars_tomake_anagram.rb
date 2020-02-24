def make_anagram(a, b)
    first_str_hash = {}
    second_str_hash = {}
    a.split('').each do |char|
        if first_str_hash.key?(char)
            first_str_hash[char] = first_str_hash[char] + 1
        else
            first_str_hash[char] = 1
        end
    end

    b.split('').each do |char|
         if second_str_hash.key?(char)
            second_str_hash[char] = second_str_hash[char] + 1
        else
            second_str_hash[char] = 1
        end
    end

    difference_chars = 0
    first_str_hash.each do |key, value|
        if second_str_hash.key?(key)
            difference_chars += (second_str_hash[key] - value).abs
            second_str_hash.delete(key)
            first_str_hash.delete(key)
        end
      end
    
      puts first_str_hash
      puts second_str_hash
    difference_chars += first_str_hash.values.inject(:+)
    # difference_chars += second_str_hash.values.inject(:+)
    return difference_chars
end

make_anagram('showman', 'woman')

# output => 2
