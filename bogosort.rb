def bogosort(a)
  until sorted?(a)
    p a
    a = a.shuffle
  end

  a
end

def sorted?(a)
  s = true

  (a.length-1).times do |i|
    if a[i] > a[i+1]
      s = false
    end
  end

  s
end

u = (1..5).to_a.sort{ rand() - 0.5 }[0..9]
puts u.inspect

s = bogosort(u)
puts s.inspect