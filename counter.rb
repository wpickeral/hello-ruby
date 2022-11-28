class Counter
  def initialize
    @count = 0
  end

  def increment_one
    @count += 1
  end

  def decrement_one
    @count -= 1
  end

  def get_count
    @count
  end
end

my_counter = Counter.new
3.times { my_counter.increment_one } # increment the counter 3 times
puts my_counter.get_count