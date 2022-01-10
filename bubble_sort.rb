def bubble_sort(arr)
  n = arr.length

  for i in 0...n do
    swapped = false
    for j in 0...n-i-1 do
      if arr[j] > arr[j+1]
        # swap elements
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end


p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]