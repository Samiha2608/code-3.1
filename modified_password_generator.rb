require 'csv'

class PasswordGenerator
  attr_reader :length, :password

  def initialize(length)
    @length = length
    @password = ""
  end

  def generate
    return "" if @length <= 0

    lower = ('a'..'z').to_a
    upper = ('A'..'Z').to_a
    digits = ('0'..'9').to_a
    symbols = ['!', '@', '#', '$', '%', '^', '&', '*']

    base_count = @length / 4
    extra_count = @length - (base_count * 4)
    all_chars = lower + upper + digits + symbols

    pwd = []
    base_count.times { pwd << lower.sample }
    base_count.times { pwd << upper.sample }
    base_count.times { pwd << digits.sample }
    base_count.times { pwd << symbols.sample }
    extra_count.times { pwd << all_chars.sample }

    @password = pwd.shuffle.join
  end
end

class PasswordStorage
  def initialize(file_path = 'passwords.csv')
    @file_path = file_path
    create_file_if_not_exists
  end

  def create_file_if_not_exists
    unless File.exist?(@file_path)
      CSV.open(@file_path, 'w') { |csv| csv << ['Password'] }
    end
  end

  def password_exists?(password)
    CSV.foreach(@file_path, headers: true) do |row|
      return true if row['Password'] == password
    end
    false
  end

  def save_password(password)
    CSV.open(@file_path, 'a') { |csv| csv << [password] }
  end
end

# === Main Program ===
puts "Enter the length of the password:"
length = gets.chomp.to_i
puts "Entered length was: #{length}"

if length >= 7
  generator = PasswordGenerator.new(length)
  password = generator.generate
  puts "Generated Password: #{password}"

  storage = PasswordStorage.new

  if storage.password_exists?(password)
    puts "Password already exists!"
  else
    storage.save_password(password)
    puts "Password saved to CSV file."
  end
else
  puts "Invalid input. Please enter a positive number.Password length must be greater than or equal to 7"
end
