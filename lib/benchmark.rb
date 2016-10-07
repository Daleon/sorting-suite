require_relative 'bubble_sort'
require_relative 'merge_sort'
require_relative 'insert_sort'

class Benchmark

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

    times = []
    times << (end_time - beginning_time)*1000000
    times << (end_time_2 - beginning_time_2)*1000000
    times << (end_time_3 - beginning_time_3)*1000000

    fastest_time = (times.sort.first)
    if fastest_time == (end_time - beginning_time)*1000000
      puts "BubbleSort has the fastest time."
    elsif fastest_time == (end_time_2 - beginning_time_2)*1000000
      puts "InsertSort has the fastest time."
    elsif fastest_time == (end_time_3 - beginning_time_3)*1000000
      puts "MergeSort has the fastest time."
    end
    slowest_time = (times.sort.last)
    if slowest_time == (end_time - beginning_time)*1000000
      puts "BubbleSort has the slowest time."
    elsif slowest_time == (end_time_2 - beginning_time_2)*1000000
      puts "InsertSort has the slowest time."
    elsif slowest_time == (end_time_3 - beginning_time_3)*1000000
      puts "MergeSort has the slowest time."
    end
  end
end
benchmark = Benchmark.new
benchmark_time = benchmark.bubble_sort_time([3,3,4,5,1])
