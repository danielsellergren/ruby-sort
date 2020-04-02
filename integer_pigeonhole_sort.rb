def integer_pigeonhole_sort(a)
  [*0..a.length-1]
end

u = (0..19).to_a.sort{ rand() - 0.5 }[0..19]
p u

s = integer_pigeonhole_sort(u)
p s