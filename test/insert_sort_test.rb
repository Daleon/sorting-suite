gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/insert_sort'

class InsertSortTest < Minitest::Test
  def test_it_can_sort_with_insertion
    insertion_sorter = InsertSort.new
    assert_equal ["a", "b", "c", "d"],
     insertion_sorter.sort(["d", "b", "a", "c"])
  end
end
