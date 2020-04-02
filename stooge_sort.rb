def stooge_sort(a, s, f)
  if a[s] > a[f]
    a[s], a[f] = a[f], a[s]
  end
  p a

  if (f-s+1) > 2
    t = (f-s+1) / 3

    stooge_sort(a, s, f-t)
    stooge_sort(a, s+t, f)
    stooge_sort(a, s, f-t)
  end

  a
end

u = (0..9).to_a.sort{ rand() - 0.5 }[0..7]
p u

s = stooge_sort(u, 0, u.length-1)
p s