class MergeSort
  def self.sort(a, s=false, f=false, o=false)
    return a if a.length <= 1

    m = a.length / 2
    l = a[0...m]
    r = a[m..a.length-1]
  
    l = sort(l)
    r = sort(r)
  
    merge(l, r)
  end

  def self.merge(l, r)
    o = []

    while l.length > 0 || r.length > 0
      if l.length > 0 && r.length > 0
        l[0] <= r[0] ? o << l.shift : o << r.shift
      elsif l.length > 0
        o << l.shift
      elsif r.length > 0
        o << r.shift
      end
    end
    o
  end
end
