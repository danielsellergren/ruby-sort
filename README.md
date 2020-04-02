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