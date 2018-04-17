
class Array

  def initialize(array = [])
    @array = array
  end

  def uniq?
    hash = {}
    flag = false
    @array.each do |element|
      if hash.key?(element)
        flag = true
        break
      else
        hash[element] = 1
      end
    end
    if flag
      puts 'Given array is not uniq'
    else
      puts 'Given array is uniq'
    end
  end

end
