
ary = ["fred" , 10, 3.14, "This is a string", "last element"]
ary.each do |i|
    puts i
end
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue"=>0x00f}
hsh.each do |key, value|
    print key, "is", value, "\n"
end
(10..15).each do |n|
    print n, "\n"
end

names=Array.new(4 , "mac")
puts "#{names}"

digits=Array(0..9)
num = digits.at(6)
puts "#{num}"