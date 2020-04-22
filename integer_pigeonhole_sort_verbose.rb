# frozen_string_literal: true

# Integer Pigeonhole Sort
#
# Input: A sequence of numbers from 0 to N in any order.
# Output: An ordered sequence from smallest number to largest.
#
def integer_pigeonhole_sort(numbers)
  sorted = []

  numbers.length.times do |i|
    sorted << i
  end

  sorted
end

# Generate array from 0 to 19 in random order.
unsorted = (0..19).to_a.sort { rand - 0.5 }[0..19]
puts unsorted.inspect

# Sort.
sorted = integer_pigeonhole_sort(unsorted)
puts sorted.inspect
