class String
  def is_anagram?(str1, str2)
    arr1, arr2 = [], []
    str1.split('').each do |char|
      arr1 << char.ord
    end
    str2.split('').each do |char|
      arr2 << char.ord
    end
    if arr1.inject(:+) == arr2.inject(:+)
      puts 'Anagram'
    else
      puts 'Not Anagram'
    end
  end
end

a = String.new
a.is_anagram?('listen', 'silent')
