a = [1,1,2,3,4,2,4,2,5,6,5]
hash = {}
a.each do |e|
  if hash.has_key?(e)
    hash[e] = hash[e] += 1
  else
    hash[e] = 1
  end
end

puts hash.select{|k,v| v % 2 != 0}.keys
