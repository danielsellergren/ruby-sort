class Bogosort
  def self.sort(a, s=false, f=false, o=false)
    until sorted?(a)
      p a if o
      a = a.shuffle
    end
  
    a
  end

  def self.sorted?(a)
    s = true

    (a.length-1).times do |i|
      if a[i] > a[i+1]
        s = false
      end
    end
  
    s
  end
end
