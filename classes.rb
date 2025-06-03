#local variables start with lowercase or _
#Instance variables @;
#class variables @@;
# global variable $;
$global_variable = 10
class Class1
    def print_global
        puts "Globaal variable is #$global_variable"
    end
end
class Class2
    def print_global
        puts "Global variable in class 2 is #$global_variable"
    end
end

class Customer
    @@no_of_customers=0
     def initialize(id, name , addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end
    def total_no_of_customers()
        @@no_of_customers +=1
        puts "Total number of customers: #@@no_of_customers"
    end

end
class Example
    VAR1 =100
    VAR2 = 200
    def show
        puts "Value of first constant is #{VAR1}"
        puts "Value of second Constant is #{VAR2}"
    end
end




class1Obj=Class1.new
class1Obj.print_global
class2Obj=Class2.new
class2Obj.print_global

cust1= Customer.new("1", "John", "Wisdom Apartments Ludhiya")
cust2=Customer.new("2", "Poul","New Empire road Khandala")

#call method
cust1.display_details()
cust2.display_details()

cust1.total_no_of_customers()
cust2.total_no_of_customers()

object =Example.new()
object.show