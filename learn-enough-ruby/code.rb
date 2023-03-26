def min_sum(arr)
  result = 0
  arr.sort.each do |i, j|
   i = arr.min
   j = arr.max
    result += i * j
    arr[i - 1]
    arr[j - 1] 
    puts i 
    puts j
  end
  result
end

arr = [5, 4, 2, 3]

p min_sum(arr)