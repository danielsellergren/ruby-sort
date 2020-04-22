# frozen_string_literal: true

# Bogosort in Ruby
#
# Input: A sequence of numbers in any order.
# Output: An ordered sequence from smallest number to largest.
#
def bogosort(numbers)
  # Keep shuffling the array until it is sorted.
  until sorted?(numbers)
    p numbers
    numbers = numbers.shuffle
  end

  numbers
end

# Checks to see whether array is sorted.
def sorted?(array)
  sorted = true

  # Iterates through the array and invalidates that the array is sorted
  # if it finds an instance where elements are out of order.
  (array.length - 1).times do |i|
    sorted = false if array[i] > array[i + 1]
  end

  sorted
end

# Generate array of five random integers.
unsorted = (1..5).to_a.sort { rand - 0.5 }[0..9]
puts unsorted.inspect

# Sort.
sorted = bogosort(unsorted)
puts sorted.inspect
