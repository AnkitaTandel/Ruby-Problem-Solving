class ElementPosition
  def initialize(array = [], element = nil)
    @array = array
    @element = element
  end

  def find_position
    position = nil
    @array.each_with_index do |e, index|
      position = index if e == @element
    end
    puts "Position of #{@element} in given array is: #{position}"
  end
end

# array = [1,2,3,4]
# e = ElementPosition.new(array, 4)
# e.find_position
