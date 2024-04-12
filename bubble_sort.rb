def bubble_sort(array)
  sorted = array.sort { |a,b| a <=> b }
  to_sort = []
  array.each {|e| to_sort << e.dup}

  length = array.length
  sorted_array = array.sort { |a, b| a <=> b }

  if to_sort != sorted_array
    sort_method(to_sort, length)
  else
    to_sort
  end
end

def sort_method(array, length)
  i = 0
  cur_val = 0
  length -= 1
  if length > 0 
    while i < length
      if i < length && array[i] > array[i + 1]
        cur_val = array[i]
        array[i] = array[i + 1]
        array[i + 1] = cur_val
      end
      i += 1
    end
    sort_method(array, length)
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

# p bubble_sort([3, 4, 5, 6, 6, 7])

# p bubble_sort([32, 45, 33, 6, 232, 4, 2, 56])