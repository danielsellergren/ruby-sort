# Sleep Sort
#
# Input: A sequence of numbers in any order.
# Output: An ordered sequence from smallest number to largest.
#
def sleep_sort(numbers)
  threads = []
  sorted = []

  # Iterate through the array and create a new thread for each value.
  # Inside each thread, sleep for the number of seconds represented by
  # the value of the element. Then add the number to the sorted array.
  numbers.each do |number|
    threads << Thread.new { 
      sleep(number)
      sorted << number 
    }
  end

  # Calling `join` means the main thread won't finish until every child
  # thread has finished. Otherwise the program will finish before our
  # threads are done sleeping, and the array won't be sorted.
  threads.each do |thread|
    thread.join
  end

  sorted
end

# Generate array of ten random integers.
unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
puts unsorted.inspect

# Sort.
sorted = sleep_sort(unsorted)
puts sorted.inspect