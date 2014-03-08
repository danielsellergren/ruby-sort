# Merge Sort
#
# Input: A sequence of numbers in any order
# Output: An ordered sequence from smallest number to largest
#
def merge_sort(numbers)

  # Empty sets and singletons are already sorted
  if numbers.length <= 1
    return numbers
  end

  # Split array in two
  middle = numbers.length / 2
  left = numbers[0...middle]
  right = numbers[middle..numbers.length-1]

  puts left.inspect
  puts right.inspect

  # Recursively call merge_sort to divide
  # array into continually smaller sets
  left = merge_sort(left)
  right = merge_sort(right)

  puts left.inspect
  puts right.inspect

  # Merge sets
  merge(left, right)
end

def merge(left, right)
  result = []

  # As long as there are elements to compare
  while left.length > 0 || right.length > 0

    # If there are elements in both sets to compare
    if left.length > 0 && right.length > 0

      # Smallest element is added to result
      if left[0] <= right[0]
        result << left.shift
      else
        result << right.shift
      end

    # Otherwise, add remaining elements
    elsif left.length > 0
      result << left.shift
    elsif right.length > 0
      result << right.shift
    end
  end

  result
end

# Generate array of ten random integers
unsorted = (0..7).to_a.sort{ rand() - 0.5 }[0..7]
puts unsorted.inspect

# Sort
sorted = merge_sort(unsorted)
puts sorted.inspect