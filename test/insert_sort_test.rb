gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/insert_sort'

class InsertSortTest < Minitest::Test
  def test_it_can_sort_with_insertion
    insertion_sorter = InsertSort.new
    assert_equal [1], insertion_sorter.sort([1])
    assert_equal [0,1], insertion_sorter.sort([1,0])
    assert_equal [0,1,4], insertion_sorter.sort([1,0,4])
    assert_equal [0,1,3,4], insertion_sorter.sort([1,0,4,3])
    assert_equal [0,1,2,3,4], insertion_sorter.sort([1,0,4,3,2])
    assert_equal ["a", "b", "c", "d"],
     insertion_sorter.sort(["d", "b", "a", "c"])
  end
end
