require 'pry'
module Sort
  # merge_sort executes the merge sort algorithm recursively
  module_function

  def merge_sort(init_arr)
    # Divide: arr into half, or half+1 for one of them if arr.length.odd?
    half_length = init_arr.length/2
    multi_arr   = [init_arr[0...half_length], init_arr[half_length..-1]]

    if multi_arr.all? { |inner_arr| inner_arr.length == 1 }
      return multi_arr
    end

    # Merge.conquer multi_arr
    multi_arr.each_with_object([]) do |elem, arr|
      arr << elem             if elem.length == 1
      arr << merge_sort(elem) if elem.length != 1
    end

    # Combine: Merge the two sorted smaller arrays into a single sorted array
  end
end

# puts "Sort.merge_sort [1, 2, 3] # => #{Sort.merge_sort [3, 1, 2]}"
puts ""
puts "Sort.merge_sort [1, 2, 3] # => #{Sort.merge_sort [3, 1, 4, 2]}"
