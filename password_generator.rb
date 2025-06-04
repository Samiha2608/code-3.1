puts "Enter the length of the password"
pass_length=gets.chomp.to_i
puts "Entered length was:#{pass_length}"

def generate_password(pass_length)
  string=""

  #add lowercase values in string
  characters = ('a'..'z').to_a
  (pass_length/3).times { string << characters.sample }

  #add Uppercase value in string
  characters1 = ('A'..'Z').to_a
  (pass_length/3).times { string << characters1.sample }
  #add numbers
  numbers = (0...9).to_a
  (pass_length/3).times{ string << numbers.sample.to_s }
  string
end
if pass_length > 0
  random_string = generate_password(pass_length)
  puts "Generated random string: #{random_string}"
else
  puts "Invalid length entered. Please enter a positive integer."
end


