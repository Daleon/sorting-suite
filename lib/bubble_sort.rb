class BubbleSort
  def sort(arr)
    loop do
      swapped = false
      (arr.length - 1).times do |char|
        if arr[char] > arr[char + 1]
          arr[char], arr[char + 1] = arr[char + 1], arr[char]
          swapped = true
        end
      end
      break if swapped == false
    end
  arr
  end
end
