def bubble_sort(array)
  sorted = array.sort { |a,b| a <=> b }
  to_sort = array[0..-1]

  if to_sort != sorted 
    to_sort.each_with_index do |value, index| 
      increment = 0
      current_val = 0
      while increment < to_sort.length - 1
        if index < to_sort.length - 1 
          if to_sort[index] > to_sort[index + 1]    
            current_val = value
            to_sort[index] = to_sort[index + 1]
            to_sort[index + 1] = current_val 
          end
        end
        increment += 1
      end
    end
    bubble_sort(to_sort)
  else
    to_sort
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])

# p bubble_sort([3, 4, 5, 6, 6, 7])

# p bubble_sort([32, 45, 33, 6, 232, 4, 2, 56])