class SleepSort
  def self.sort(a, s=false, f=false, o=false)
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
end
