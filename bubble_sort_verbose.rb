# Bubble Sort in Ruby
#
# Input: A sequence of numbers in any order.
# Output: An ordered sequence from smallest number to largest.
#
def bubble_sort(numbers)

  # Set an initial value of false for swapped, because nothing has been swapped.
  swapped = false

  # Iterate through the array, swapping each value if it is larger than
  # the next value in the array. If the values are swapped, set our swapped
  # variable to true so that we know another pass is needed.
  (numbers.length-1).times do |i|
    if numbers[i] > numbers[i+1]
      numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
      swapped = true
    end
  end

  p numbers
  if swapped
    bubble_sort(numbers)
  else
    return numbers
  end
end

# Generate array of ten random integers.
unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
puts unsorted.inspect

# Sort.
sorted = bubble_sort(unsorted)
puts sorted.inspect