def min_sum(arr)
  result = 0
  arr.sort.each do |i, j|
    puts arr
    if arr.size == 0
      break
    else 
      result += arr.shift * arr.pop
    end
  end
  result
end

arr = [5, 4, 2, 3]

p min_sum(arr)