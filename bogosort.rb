# frozen_string_literal: true

# Bogosort ("Bogus" + "sort") is an intentionally inefficient algorithm
# for sorting which randomly shuffles the list until it is correctly sorted.
# It is not seriously used for any purpose but rather is interesting only
# in comparison to more efficient algorithms.
class Bogosort
  def self.sort(a, _s = false, _f = false, o = false)
    until sorted?(a)
      p a if o
      a = a.shuffle
    end

    a
  end

  def self.sorted?(a)
    s = true

    (a.length - 1).times do |i|
      s = false if a[i] > a[i + 1]
    end

    s
  end
end
