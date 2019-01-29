# Given a 1D Array. Return True if there exists an element where a[i]+a[j] = 0 && i!=j.
arr = [-1,-3,2,-2,5,5]

i = 0
j = 1
flag = false

while(j < arr.size)
  if arr[i] + arr[j] == 0
    flag = true
    break
  else
    i += 1
    j += 1
  end
end
puts flag
