class Frequencies
  def initialize(array)
    @array=array
  end
  def count_frequencies
    freq = {}
    @array.each do |num|
      freq[num] ||= 0
      freq[num] += 1
    end
    freq
  end
end

arr = [1, 2, 2, 3, 4, 4, 5]
counter = Frequencies.new(arr)
result = counter.count_frequencies

puts "array:#{arr}"
puts "frequencies:#{result}"