def bubble_sort(array)
  # create a new array from original to preserve original
  to_sort = []
  array.each {|e| to_sort << e.dup}

  length = array.length

  # create check array of true/false values that will determine if array is sorted or not
  check = []
  if is_sorted?(array, check).all?
    to_sort
  else
    sort_method(to_sort, length, check)
  end
end

# sort_method takes an array and swaps the values if the next value is less than the previous
def sort_method(array, length, check_array)
  i = 0
  cur_val = 0
  # change the length for each iteration to reduce the iterations each time sort_method is called
  length -= 1
  if length > 0 

    while i < length do
      if array[i] > array[i + 1]
        cur_val = array[i]
        array[i] = array[i + 1]
        array[i + 1] = cur_val
      end
      i += 1
    end

    # after the iterations, check to see if the array is sorted. Return the array if it is sorted
    if is_sorted?(array, check_array).all?
      array
    else
      sort_method(array, length, check_array)
    end
    
  end
  array
end

# check through the array to see if the next value is greater than the previous
def is_sorted?(array, check_array)
  i = 0
  while i < array.length - 1 do
    if array[i] < array[i + 1] || array[i] == array[i + 1]
      check_array[i] = true
    else
      check_array[i] = false
    end
    i += 1
    check_array
  end

  if i == array.length - 1 && array[i] == array.max
    check_array[i] = true
  else
    check_array[i] = false
  end

  check_array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

# p bubble_sort([3, 4, 5, 6, 6, 7])

# p bubble_sort([32, 45, 33, 6, 232, 4, 2, 56])

# p bubble_sort([5, 1, 4, 2, 8])

# p bubble_sort([2, 4, 3, 5, 6])