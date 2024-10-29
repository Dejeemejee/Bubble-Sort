def bubble_sort(array)
  # Outer loop: controls the number of passes through the array
  # Goes from 0 to (array size - 2) because last element doesn't need checking
   for k in 0..array.size - 2
     # Print current pass number for debugging
    p "#{k} is "

     # Initialize indices for comparison
    i = 0 # Current element index
    j = 1 # Next element index

    # Create a reference to the input array
    # Note: This doesn't create a new copy, it references the same array
      new_arr = array

      # Inner loop: compares adjacent elements
      # Continues until reaching the end of array
      while i < new_arr.size - 1 do
        # Compare adjacent elements
        # If current element is greater than next element, swap them
        if new_arr[i] > new_arr[j]
           # Swap elements using parallel assignment
          new_arr[i], new_arr[j] = new_arr[j], new_arr[i]
        end

         # Move to next pair of elements
        i += 1
        j += 1
      end

   end
  #prints the bubbled array
  puts new_arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort([6, 5, 3, 1, 8, 2, 7, 4])