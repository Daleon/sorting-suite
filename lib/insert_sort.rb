require 'pry'

class InsertSort
  def sort(input)
    input.each_with_index do |item, index|
      comparitor_index = index - 1
      while comparitor_index >= 0
        break if item >= input[comparitor_index]
        input[comparitor_index + 1] = input[comparitor_index]
        comparitor_index -= 1
      end
      input[comparitor_index + 1] = item
    end
  end
end
