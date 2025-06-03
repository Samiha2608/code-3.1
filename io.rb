puts "Enter a value:"
val=gets
puts val

str ="hello"
putc str
print "Hello "
print "World"
#Input Output Files
aFile= File.new("Bye.txt", "r+")
if aFile
    aFile.syswrite("ABCDFS")
    aFile.each_byte {|ch| putc ch; putc ?.}
else
    puts "Unable to open file!"
end
arr = IO.readlines("Bye.txt")
puts arr[0]
puts arr[1]

IO.foreach("Bye.txt"){|block| puts block}
File.rename("Bye.txt", "Bye.txt")
File.delete("Bye.txt")