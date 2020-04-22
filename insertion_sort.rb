# frozen_string_literal: true

# Insertion Sort is a very simple and common sense approach to the
# sorting problem. It is stable, in-place, online, and efficient for
# small data sets and data sets that are already mostly sorted.
class InsertionSort
  def self.sort(a, _s = false, _f = false, o = false)
    (1...a.length).each do |i|
      k = a[i]
      j = i - 1
      while (j >= 0) && (a[j] > k)
        a[j + 1] = a[j]
        j -= 1
      end
      a[j + 1] = k
      p a if o
    end
    a
  end
end
