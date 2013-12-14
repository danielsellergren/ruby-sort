# Insertion Sort
#
# Input: A sequence of numbers in any order
# Output: An ordered sequence from smallest number to largest
#
def insertion_sort(numbers)

  # Iterate through the length of the array,
  # beginning with the second element numbers[i]
  for i in 1...numbers.length
    key = numbers[i]
    j = i - 1

    # If element to left of key is larger then
    # move it one position over at a time
    while j >= 0 and numbers[j] > key
      numbers[j+1] = numbers[j]
      j = j - 1
    end

    # Update key position
    numbers[j+1] = key
    puts numbers.inspect
  end

  # Return sorted array
  numbers
end

# Generate array of ten random integers
unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
puts unsorted.inspect

# Sort
sorted = insertion_sort(unsorted)
puts sorted.inspect