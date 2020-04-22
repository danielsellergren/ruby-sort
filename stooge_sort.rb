class StoogeSort
  def self.sort(a, s, f, o=false)
    if a[s] > a[f]
      a[s], a[f] = a[f], a[s]
    end
    p a if o
  
    if (f-s+1) > 2
      t = (f-s+1) / 3
  
      sort(a, s, f-t)
      sort(a, s+t, f)
      sort(a, s, f-t)
    end
  
    a
  end
end
