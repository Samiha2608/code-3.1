class RunningSum
  def initialize(array)
    @array = array
    @sums = []
  end

  def calculate
    running_total = 0
    @array.each do |num|
      puts "nums values: #{num}"
      running_total += num
      @sums << running_total
    end
    puts "Running sum: #{@sums}"
  end
end

arr = [1, 2, 3, 4, 5]
run_sum = RunningSum.new(arr)
run_sum.calculate
