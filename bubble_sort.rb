def bubble_sort(array)
  sorted = array.sort { |a,b| a <=> b }

  if array != sorted 
    array.each_with_index do |value, index| 
      increment = 0
      current_val = 0
      while increment < array.length - 1
        if index < array.length - 1 
          if array[index] > array[index + 1]    
            current_val = value
            array[index] = array[index + 1]
            array[index + 1] = current_val 
          end
        end
        increment += 1
      end
    end
    bubble_sort(array)
  else
    sorted_array = array
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])

# p bubble_sort([3, 4, 5, 6, 6, 7])

# p bubble_sort([32, 45, 33, 6, 232, 4, 2, 56])