require 'set'

arr = [1, 2, 2, 3, 4, 4, 5]
frequencies={}
unique_set = Set.new(arr)
puts unique_set.to_a # Output: [1, 2, 3, 4, 5] (order might vary)
for i in unique_set
  frequencies[i]=rand(11)
end

frequencies.each do | elements, frequency |
  puts "#{elements}: #{frequency}"
end