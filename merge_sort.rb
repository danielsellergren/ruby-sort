# frozen_string_literal: true

# Merge Sort is a divide and conquer algorithm for sorting which is
# generally stable. Its average and worst case performance is O(n log n),
# which makes it more efficient than Insertion for most sets.
class MergeSort
  def self.sort(a, _s = false, _f = false, _o = false)
    return a if a.length <= 1

    m = a.length / 2
    l = a[0...m]
    r = a[m..a.length - 1]

    l = sort(l)
    r = sort(r)

    merge(l, r)
  end

  def self.merge(l, r)
    o = []

    while !l.empty? || !r.empty?
      if !l.empty? && !r.empty?
        o << (l[0] <= r[0] ? l.shift : r.shift)
      elsif !l.empty?
        o << l.shift
      elsif !r.empty?
        o << r.shift
      end
    end
    o
  end
end
