# frozen_string_literal: true

# Stooge Sort is another inefficient sorting algorithm which has a
# time complexity of O(n^(log 3 / log 1.5)).
class StoogeSort
  def self.sort(a, s, f, o = false)
    a[s], a[f] = a[f], a[s] if a[s] > a[f]
    p a if o

    if (f - s + 1) > 2
      t = (f - s + 1) / 3

      sort(a, s, f - t)
      sort(a, s + t, f)
      sort(a, s, f - t)
    end

    a
  end
end
