# frozen_string_literal: true

# Slowsort is another unserious sorting algorithm first published in 1986
# by Andrei Broder and Jorge Stolfi in their paper Pessimal Algorithms and
# Simplexity Analysis. First it sorts the first half of the array recursively,
# then the second half of the array recursively, then it places the highest
# element of the array at the end and recursively sorts the rest of the list.
class Slowsort
  def self.sort(a, s, f, o = false)
    return a if s >= f

    p a if o

    m = ((s + f) / 2).floor
    sort(a, s, m)
    sort(a, m + 1, f)

    a[f], a[m] = a[m], a[f] if a[f] < a[m]

    sort(a, s, f - 1)
  end
end
