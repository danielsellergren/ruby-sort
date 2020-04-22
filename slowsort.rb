class Slowsort
  def self.sort(a, s, f, o=false)
    return a if s >= f
    p a if o
  
    m = ((s + f) / 2).floor
    sort(a, s, m)
    sort(a, m+1, f)
  
    if a[f] < a[m]
      a[f], a[m] = a[m], a[f]
    end
  
    sort(a, s, f-1)
  end
end
