# frozen_string_literal: true

# Sleep Sort is humorous algorithm allegedly posted anonymously to 4chan.
# It involves iterating through the array and firing off a new process for
# each element. In this process a sleep command is given with a time
# proportional to the value of the element. When these processes complete,
# they add their value to the sorted array in order of how long they slept.
class SleepSort
  def self.sort(a, _s = false, _f = false, _o = false)
    t = []
    n = []

    a.each do |i|
      t << Thread.new do
        sleep(i)
        n << i
      end
    end

    t.each(&:join)

    n
  end
end
