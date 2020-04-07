def slowsort(a, s, f)
  return a if s >= f
  p a

  m = ((s + f) / 2).floor
  slowsort(a, s, m)
  slowsort(a, m+1, f)

  if a[f] < a[m]
    a[f], a[m] = a[m], a[f]
  end

  slowsort(a, s, f-1)
end

u = (0..9).to_a.sort{ rand() - 0.5 }[0..7]
p u

s = slowsort(u, 0, u.length-1)
p s