H = Hash["a" => 100, "b"=>200]
puts "#{H['a']}"
puts "#{H['b']}"

#date and time
time1= Time.new
puts "Current Time : " + time1.inspect

#Time.now is a synonym:
time2 = Time.now
puts "Current Time: " + time2.inspect
x=[1,2,3,4,5]
y=x.collect{|x| 10*x}
puts y