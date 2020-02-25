# Sherlock considers a string to be valid if all characters of the string appear the same number of times. 
# It is also valid if he can remove just  character at  index in the string, and the remaining characters will occur
# the same number of times. Given a string , determine if it is valid. If so, return YES, otherwise return NO.
# For example, if , it is a valid string because frequencies are . So is  because we can remove one  and have  of each character in the remaining string. If  however, the string is not valid as we can only remove  occurrence of . That would leave character frequencies of .
# e.g 'aabbcd' -> 'NO'
# 'abcdefghhgfedecba' -> 'YES'


def is_valid(s)
    char_frequency = {}
    s.split('').each do |char|
        if char_frequency.key?(char)
            char_frequency[char] = char_frequency[char] += 1
        else
            char_frequency[char] = 1
        end
    end

    frequency = char_frequency.values
    
     if frequency.uniq.size == 1
        'YES'
    elsif frequency.uniq.size == 2
       occurances = {}
       frequency.each do |f|
        if occurances.key?(f)
            occurances[f] = occurances[f] += 1
        else
            occurances[f] = 1
        end
       end
        if occurances.keys.count > 2
            'NO'
        else
            if occurances.select{|k,v| k == 1 && v == 1}.size == 1
                'YES'
            elsif occurances.values.include?(1) && (occurances.keys.max - occurances.keys.min) == 1
                'YES'
            else
                'NO'
            end
        end
    else
        'NO'
    end
end


result = is_valid 'aabbc'
# 'YES'
