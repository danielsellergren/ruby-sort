class InsertionSort
  def self.sort(a, s=false, f=false, o=false)
    for i in 1...a.length
      k = a[i]
      j = i - 1
      while j >= 0 and a[j] > k
        a[j+1] = a[j]
        j = j - 1
      end
      a[j+1] = k
      p a if o
    end
    a
  end
end