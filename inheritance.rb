
# Define a Box class
class Box
  def initialize(w, h)
    @width = w
    @height = h
  end

  # Instance method
  def get_area
    @width * @height
  end
end

# Define subclass BigBox
class BigBox < Box
  # New instance method
  def print_area
    area = @width * @height
    puts "Big box area is: #{area}"
  end
end

# Create object and call method
box = BigBox.new(10, 20)
box.print_area