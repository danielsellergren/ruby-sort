# Sorting Algorithms in Ruby

## Insertion Sort

* Insertion Sort is a very simple and common sense approach to the sorting problem. It is stable, in-place, online, and efficient for small data sets and data sets that are already mostly sorted.

[Insertion Sort on Wikipedia](http://en.wikipedia.org/wiki/Insertion_sort)

## Merge Sort

* Merge Sort is a divide and conquer algorithm for sorting which is generally stable. Its average and worst case performance is `O(n log n)`, which makes it more efficient than Insertion for most sets.

[Merge Sort on Wikipedia](http://en.wikipedia.org/wiki/Merge_sort)

## Bubble Sort

* Bubble Sort is an extremely simple and generally poor-performing algorithm for sorting which iterates through a list and swaps values that are in the wrong order. This process is repeated until the list is fully sorted. It has a worst-case and average complexity of O(n^2).

* [Bubble Sort on Wikipedia](https://en.wikipedia.org/wiki/Bubble_sort)

## Bogosort

Bogosort ("Bogus" + "sort") is an intentionally inefficient algorithm for sorting which randomly shuffles the list until it is correctly sorted. It is not seriously used for any purpose but rather is interesting only in comparison to more efficient algorithms.

* [Bogosort on Wikipedia](https://en.wikipedia.org/wiki/Bogosort)

## Stooge Sort

Stooge Sort is another inefficient sorting algorithm which has a time complexity of `O(n^(log 3 / log 1.5))`.

* [Stooge Sort on Wikipedia](https://en.wikipedia.org/wiki/Stooge_sort)

## Sleep Sort

Sleep Sort is humorous algorithm allegedly posted anonymously to 4chan. It involves iterating through the array and firing off a new process for each element. In this process a `sleep` command is given with a time proportional to the value of the element. When these processes complete, they add their value to the sorted array in order of how long they slept.

* [Sleep Sort: Where Theory Meets Sobering Reality](https://dev.to/sishaarrao/sleep-sort-where-theory-meets-sobering-reality-b3m)
* [Untangling Ruby Threads](https://thoughtbot.com/blog/untangling-ruby-threads)
* [What is the Time Complexity of the Sleep Sort?](https://stackoverflow.com/questions/6474318/what-is-the-time-complexity-of-the-sleep-sort)

## Integer Pigeonhole Sort

Integer Pigeonhole Sort is an `O(n)` solution for sorting a list of `n` integers from `0` to `n-1` with no duplicates. For this specific case the order of the original array does not matter and in fact is not even used, but rather a new array is generated with the correct ordering.

* [What is the Strangest Sorting Algorithm?](https://www.quora.com/What-is-the-strangest-sorting-algorithm)

## Slowsort

Slowsort is another unserious sorting algorithm first published in 1986 by Andrei Broder and Jorge Stolfi in their paper _Pessimal Algorithms and Simplexity Analysis_. First it sorts the first half of the array recursively, then the second half of the array recursively, then it places the highest element of the array at the end and recursively sorts the rest of the list.

* [Slowsort on Wikipedia](https://en.wikipedia.org/wiki/Slowsort)