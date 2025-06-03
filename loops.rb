# #while statement
# i=0
# num=5
# while i < num do
#     puts("Inside the loop i = #{i}")
#     i +=1
# end

# x=0
# y=10
# begin 
#     puts("Inside the loop i= #{x}")
#     x +=1
# end while x<y

# #until statement
# #execute code when condition is false
# until i>num do
#     puts("Outside the loop i = #{i}")
#     i+=1
# end


# #with begin and end statemnet
# begin
#     puts("here i= #{i}")
#     i=i+1
# end until i>num

# #for statement
# for i in 0..5
#     if i>2 then 
#         break
#     end
#     puts "Value of local variable is #{i}"
# end

# #next statement
# for i in 0..10
#     if i<2 then
#         next
#     end
#     puts "Values of local variable is #{i}"
# end

#redo statement
# for i in 0..5
#     if i<2 then
#         puts "Value of local varaible is #{i}"
#         redo
#     end
# end
#retry statement

for i in 0..5
  begin
    # Simulate an error for demonstration
    raise "Simulated error" if i == 3

    puts "Value of local variable is #{i}"
  rescue
    puts "An error occurred at i=#{i}"
    retry if i > 2 # This will raise an error in Ruby 2.0+
  end
end
