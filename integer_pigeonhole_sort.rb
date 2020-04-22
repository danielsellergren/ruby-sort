# frozen_string_literal: true

# Integer Pigeonhole Sort is an O(n) solution for sorting a list of n integers
# from 0 to n-1 with no duplicates. For this specific case the order of the
# original array does not matter and in fact is not even used, but rather
# a new array is generated with the correct ordering.
class IntegerPigeonholeSort
  def self.sort(a, _s = false, _f = false, _o = false)
    [*0..a.length - 1]
  end
end
