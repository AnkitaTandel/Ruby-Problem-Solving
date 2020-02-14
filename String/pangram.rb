s = 'We promptly judged antique ivory buckles for the next prize'

def pangrams(s)
    hash = {}
    array = s.gsub(' ', '').split('')
    array.each do |char|
        char = char.downcase
        if hash.key?(char)
            hash[char] = hash[char] += 1
        else
            hash[char] = 1
        end
    end

    # puts hash

    if hash.keys.size == 26
        puts 'pangram'
    else
        puts 'not pangram'
    end

end
pangrams(s)
