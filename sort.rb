require 'pry'
module Sort
  # merge_sort executes the merge sort algorithm recursively
  module_function

  def merge_sort(init_arr, which_arr: "init_arr")
    # base case
    return init_arr if init_arr.length == 1

    # divide
    half_length = (init_arr.length - 1) / 2
    arr_one     = init_arr[0..half_length]
    arr_two     = init_arr[half_length + 1..-1]
    # multi_arr   = [arr_one, arr_two] # uncomment to see progression
    # puts "#{which_arr}: #{multi_arr.inspect}" # uncomment to see progression

    # Combine: merge & sort the two smaller arrays into a single sorted array
    recur_one = merge_sort(arr_one, which_arr: 'arr_one')
    recur_two = merge_sort(arr_two, which_arr: 'arr_two')
    # puts " recur_one: #{recur_one.inspect}\n recur_two: #{recur_two.inspect}" # uncomment to see progression
    new_arr = (recur_one + recur_two).sort
    # puts "new arr: #{new_arr.inspect}\n" # uncomment to see progression
    new_arr
  end
end

puts "Sort.merge_sort [1, 2, 3] # => #{Sort.merge_sort [3, 1, 2]}"
puts ""
puts "Sort.merge_sort [14, 7, 3, 12, 9, 11, 6, 2] # => #{Sort.merge_sort [14, 7, 3, 12, 9, 11, 6, 2]}"
puts ""
puts "Sort.merge_sort [1, 2, 3] # => #{Sort.merge_sort [3, 1, 4, 2]}"
