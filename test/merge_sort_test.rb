gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_it_can_merge_sort
    merge_sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d"],
     merge_sorter.merge_sort(["d", "b", "a", "c"])
  end
end
