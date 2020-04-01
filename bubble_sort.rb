def bubble_sort(a)
  s = false

  (a.length-1).times do |i|
    if a[i] > a[i+1]
      a[i], a[i+1] = a[i+1], a[i]
      s = true
    end
  end

  p a
  if s
    bubble_sort(a)
  else
    return a
  end
end

a = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
p a

s = bubble_sort(a)
puts s.inspect