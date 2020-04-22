class BubbleSort
  def self.sort(a, s=false, f=false, o=false)
    s = false

    (a.length-1).times do |i|
      if a[i] > a[i+1]
        a[i], a[i+1] = a[i+1], a[i]
        s = true
      end
    end
  
    p a if o
    if s
      sort(a)
    else
      return a
    end
  end
end