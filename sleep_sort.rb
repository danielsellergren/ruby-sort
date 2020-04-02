def sleep_sort(a)
  t = []
  s = []

  a.each do |i|
    t << Thread.new { 
      sleep(i)
      s << i
    }
  end

  t.each do |i|
    i.join
  end

  s
end

u = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
p u

s = sleep_sort(u)
p s