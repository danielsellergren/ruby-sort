def merge_sort(a)
  return a if a.length <= 1

  m = a.length / 2
  p l = a[0...m]
  p r = a[m..a.length-1]

  p l = merge_sort(l)
  p r = merge_sort(r)

  merge(l, r)
end

def merge(l, r)
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

a = (0..7).to_a.sort{ rand() - 0.5 }[0..7]
p a

s = merge_sort(a)
p s