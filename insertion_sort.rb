def insertion_sort(a)
  for i in 1...a.length
    k = a[i]
    j = i - 1
    while j >= 0 and a[j] > k
      a[j+1] = a[j]
      j = j - 1
    end
    a[j+1] = k
    p a
  end
  a
end

a = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
p a

s = insertion_sort(a)
p s