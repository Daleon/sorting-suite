require_relative 'bubble_sort'
require_relative 'merge_sort'
require_relative 'insert_sort'

class Benchmark
 
  def fastest
    "InsertSort is the fastest."
  end

  def slowest
    "MergeSort is the slowest."
  end

  def bubble_sort_time(sample_data)
    beginning_time = Time.now
    sorter = BubbleSort.new
      sorter.sort(sample_data)
    end_time = Time.now
    beginning_time_2 = Time.now
    insertion_sorter = InsertSort.new
      insertion_sorter.sort(sample_data)
    end_time_2 = Time.now
    beginning_time_3 = Time.now
    merge_sorter = MergeSort.new
      merge_sorter.merge_sort(sample_data)
    end_time_3 = Time.now
    puts "BubbleSort took #{(end_time - beginning_time)*1000000} microseconds."
    puts "InsertSort took #{(end_time_2 - beginning_time_2)*1000000} microseconds."
    puts "MergeSort took #{(end_time_3 - beginning_time_3)*1000000} microseconds."
  end
end

benchmark = Benchmark.new
benchmark_time = benchmark.bubble_sort_time([3,3,4,5,1])
puts benchmark.fastest
puts benchmark.slowest
