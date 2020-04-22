# frozen_string_literal: true

# Bubble Sort is an extremely simple and generally poor-performing algorithm
# for sorting which iterates through a list and swaps values that are in the
# wrong order. This process is repeated until the list is fully sorted. It has
# a worst-case and average complexity of O(n^2).
class BubbleSort
  def self.sort(a, _s = false, _f = false, o = false)
    n = false

    (a.length - 1).times do |i|
      if a[i] > a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        n = true
      end
    end

    p a if o
    if n
      sort(a)
    else
      a
    end
  end
end
