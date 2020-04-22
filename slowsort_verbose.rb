# frozen_string_literal: true

# Slowsort
#
# Input: A sequence of numbers in any order.
# Output: An ordered sequence from smallest number to largest.
#
def slowsort(numbers, start, finish)
  # Return when the start and finish are the same.
  return numbers if start >= finish

  p numbers

  # Calculate middle.
  middle = ((start + finish) / 2).floor

  # Recursively slowsort the first and second halves.
  slowsort(numbers, start, middle)
  slowsort(numbers, middle + 1, finish)

  # If the last number is a lower number than the middle, swap.
  if numbers[finish] < numbers[middle]
    numbers[finish], numbers[middle] = numbers[middle], numbers[finish]
  end

  # Recursively slowsort the rest of the list without the final sorted element.
  slowsort(numbers, start, finish - 1)
end

# Generate array of ten random integers.
unsorted = (0..9).to_a.sort { rand - 0.5 }[0..7]
puts unsorted.inspect

# Sort.
sorted = slowsort(unsorted, 0, unsorted.length - 1)
puts sorted.inspect
