require './bubble_sort'
require './merge_sort'
require './insert_sort'


beginning_time = Time.now
sorter = BubbleSort.new
 sorter.sort(["d", "b", "a", "c"])
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds for bubble_sort.rb"

beginning_time_2 = Time.now
insertion_sorter = InsertSort.new
  insertion_sorter.sort(["d", "b", "a", "c"])
end_time_2 = Time.now
puts "Time elapsed #{(end_time_2 - beginning_time_2)*1000} milliseconds for insert_sort.rb"

beginning_time_3 = Time.now
merge_sorter = MergeSort.new
  merge_sorter.merge_sort(["d", "b", "a", "c"])
end_time_3 = Time.now
puts "Time elapsed #{(end_time_3 - beginning_time_3)*1000} milliseconds for merge_sort.rb"
