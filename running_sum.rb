nums = Array[1, 2, 3, 4, 5]
sum=[]

running_value=0
nums.each do |i|
  puts "nums values: #{i}"
  running_value +=i
  sum << running_value
end

sum.each do |i|
  puts "running sum values: #{i}"
end
puts "Running sum: #{sum}"

