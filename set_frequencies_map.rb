class Frequencies
  def initialize(array)
    @array=array
  end
  def count_frequencies
    map = Hash.new(0)
    @array.each do |num|
      map[num] += 1
    end
    map
  end
end

arr = [1, 2, 2, 3, 4, 4, 5]
counter = Frequencies.new(arr)
result = counter.count_frequencies

puts "array:#{arr}"
puts "frequencies:#{result}"