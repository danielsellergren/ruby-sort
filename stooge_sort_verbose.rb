# Stooge Sort
#
# Input: A sequence of numbers in any order.
# Output: An ordered sequence from smallest number to largest.
#
def stooge_sort(numbers, start, finish)
  if numbers[start] > numbers[finish]
    numbers[start], numbers[finish] = numbers[finish], numbers[start]
  end

  p numbers

  if (finish - start + 1) > 2
    third = (finish - start + 1) / 3

    stooge_sort(numbers, start, finish - third)
    stooge_sort(numbers, start + third, finish)
    stooge_sort(numbers, start, finish - third)
  end

  numbers
end

# Generate array of ten random integers.
unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..7]
puts unsorted.inspect

# Sort.
sorted = stooge_sort(unsorted, 0, unsorted.length-1)
puts sorted.inspect