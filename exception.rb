begin
    file=open("hii.txt")
    if file
        puts "File opened successfully"
    end
rescue
    fname= "hi.txt"
    retry
end
print file, "==", STDIN, "/n"