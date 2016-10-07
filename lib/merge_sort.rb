class MergeSort
  def merge_sort(unsorted)
    def mergesort(arr)
      return arr if arr.length <= 1
      mid_position = arr.length/2 - 1
      left_arr  = mergesort(arr[0..mid_position])
      right_arr = mergesort(arr[mid_position + 1..-1])
      return merge(left_arr, right_arr)
    end
    return mergesort(unsorted)
  end
    def merge(left_arr, right_arr)
      r_idx = 0
      l_idx  = 0
      sorted_arr = []
      loop do
        break if r_idx >= right_arr.length and l_idx >= left_arr.length
        if r_idx >= right_arr.length or (l_idx < left_arr.length and left_arr[l_idx] < right_arr[r_idx])
          sorted_arr << left_arr[l_idx]
          l_idx += 1
        else
          sorted_arr << right_arr[r_idx]
          r_idx += 1
        end
      end
      return sorted_arr
    end
end
