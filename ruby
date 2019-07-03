=begin
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   
end

#xyz = Customer.new()
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")








class Sample
   def hello
      puts "Hello Ruby!"
   end
end

# Now using above class to create objects
object = Sample. new
object.hello







$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global







class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()







class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
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
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.total_no_of_customers()
cust1.display_details()
cust2.total_no_of_customers()








class Example
   VAR1 = 100
   VAR2 = 200
   def show
      puts "Value of first Constant is #{VAR1}"
      puts "Value of second Constant is #{VAR2}"
   end
end

# Create Objects
object = Example.new()
object.show







i=100
j=100
if i > 200
	puts "the number of i: #{i}"
elsif j>i
	
    puts "the number of j: #{j}"	
else
    puts "the value does not match"    
end  





x=2
y=3
unless x>=3
	puts "the sum of x and y : #{x+y}"
else
    puts "the sub of x and y : #{x-y}"
end    	







$age =  8
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end




i = 0
$num = 5

while i < $num  do
   puts("Inside the loop i = #{i}" )
   i +=1
end





$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num





$i = 0
$num = 6

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end




$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num




#for
for i in 0..5
   puts "Value of local variable is #{i}"
end




#break
for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end



#next
for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end




#yield
def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}




#yieldwith parameter
def test
	puts "you r here"
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}






#blocks and method

def test
   yield
end
test{ puts "Hello world"}





def test(&block)

   block.call
end
test { puts "Hello World!"}





BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 
puts "MAIN code block"





#moduleExm
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end

#modules
$LOAD_PATH << '.'
require "support"

class Decade
include Week
   no_of_yrs = 10
   def no_of_months
      puts Week::FIRST_DAY
      number = 10*12
      puts number
   end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months





a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")   #=> "a  b  c  "
puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc")      #=> "ABC"





x=3
arr=Array(0..19)
num=arr.at(9)
unless num > x
	puts "#{num}"
	
else
    puts "#{arr}"	
end    





nums = Array.new(10) { |e| e = e * 3}
puts "#{nums}"




#hash
dic={ "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }
puts dic["weights"]
puts dic["lengths"]



dic={ "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }
dic["weights"]=["sa","chin"]
puts dic["weights"]




months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}

keys = months.values
values=months.keys
k=months.fetch("1")
puts "#{k}"
puts months["February"]
puts "#{keys}"
puts "#{values}"
v=months.length
puts "#{v}"
s=months.index("January")
puts "#{s}"
p=months.inspect
puts "#{p}"
d=months.invert
puts "#{d}"





#date and time
time1=Time.new
puts "current time:" +time1.inspect
puts time1.year
puts time1.month
puts time1.day
puts time1.zone
puts time1.wday
puts time1.yday




time = Time.new
values = time.to_a
puts "#{values}"




time = Time.new
values = time.to_a
puts Time.utc(*values)
puts time.localtime
puts time.to_s 
#puts time.to_a
puts time.strftime("%y-%m-%d %H:%M:%S")






now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff





#ranges
range1=(1..9).to_a
range2=(1...9).to_a

puts range1.include?(5)
ret = range1.min
puts "Min value is #{ret}"

ret = range1.max
puts "Max value is #{ret}"

ret = range1.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

range1.each do |range1|
   puts "In Loop #{range1}"
end
p range1
p range2







#ranges case statement
num = 41 
    
result = case num    
   when 1000..2000 then "Lies Between 1000 and 2000"   
   when 2000..3000 then "Lies Between 2000 and 3000"
   when 4000..5000 then "Lies Between 4000 and 5000" 
   when 6000..7000 then "Lies Between 6000 and 7000" 
         
   else "Above 7000"   
end   
    
puts result    






#reverse range
puts (7..0).to_a
puts (0..7).to_a.reverse







#ranges as interval
if ((1..10) === 5)
   puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
   puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
   puts "z lies in ('a'..'j')"
end







#iterators
arr=[1,2,3,4,5]
arr.each do |i|
	puts i
end	






a = [1,2,3,4,5]
b = a.collect{|i|i*2}
puts b




7.times do |i| 
    puts i 
end




4.upto(7) do |n|    
  puts n    
end  




8.downto(2) do |d|
	puts d
end	




(0..60).step(10) do|i| 
    puts i 
end




"Welcome\ato\nGeeksForGeeks\nPortal".each_line do|i| 
    puts i 
end




#I/O
puts "Enter a value :"
val = gets
puts "the value u entered: #{val}"
putc val[0]
putc val[5]





#sysread
aFile = File.new("input.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"

end`




#syswrite
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end




aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end





arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]


IO.foreach("input.txt"){|block| puts block}



file = File.new( "test2.txt", "w" )
a=file.chmod( 0755 )
puts a  


















puts "welcome to prime number check"
puts "enter number for check: "
  n = gets
  n = n.to_i

def prime(n)
  #puts "That's not an integer." #unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(n)





n = 1
while n <= 5
  n.downto 1 do |i|
    print "* "
  end
  puts
  n += 1
end



n = 1
while n <= 5
  puts ("* " * n).rjust(10)
  n += 1
end



5.times { |i| puts ('1 ' * (i+1)) }



5.times { |i| puts ('* ' * (i+1)).rjust(10) }





n = 1
while n <= 5
 1.upto(n) do |i|
 	
     
    print i


    end
   print "\n"
   n+= 1
   
  end




n = 1
while n <= 5
  n.downto 1 do |i|
    print n
  end
  puts
  n += 1
end  





arr=[7,6,5,4,3,2,1]
a=arr.to_s
puts a
b=a[1].ljust(10)
c=a[4].rjust(3)
puts "#{b}" "#{c}"
d=a[7].rjust(2)
e=a[10].rjust(9)
puts "#{d}" "#{e}"
e=a[13].rjust(3)
f=a[16].rjust(6)
puts "#{e}" "#{f}"
g=a[19].rjust(6)
puts "#{g}"










aFile = File.new("test2.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?.  }
else
   puts "Unable to open file!"
end




arr = IO.readlines("test2.txt")
puts arr[0]
puts arr[1]



#temporary file and directories
require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)



   require 'tempfile'
   f = Tempfile.new('tingtong')
   f.puts "Hello"
   puts f.path
   f.close






   #Exception
begin
   file = open("test5.txt")
   if file
      puts "File opened successfully"
   end
rescue
      #file = STDIN
      puts "check ur file name"

end
#print file, "==", STDIN, "\n"   





    def raise_exception   
    
      puts 'I am before the raise.'     
      raise 'oops! An error has occured'     
      puts 'I am after the raise'     
    end     
    raise_exception    






def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name:")












def pro(value)
	puts value

	res=readline.chomp
	throw :good if res =='*'
	return res
end
catch :good do
	name = pro("name:")
	age = pro("age:")


end
pro("name: ")














class Geeks 
      
    # method of the superclass   
    def super_method 
          
        puts "This is Superclass Method" 
  end 
      
end 
  
# derived class 'Ruby'   
class Ruby < Geeks  
      
    # overriding the method of the superclass   
    def super_method 
          
        puts "Override by Subclass" 
  end 
end 

     
# creating object of sub class 
obj = Ruby.new
ob = Geeks.new
  
# calling the method 
obj.super_method   
ob.super_method





#accesscontrol
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()






#setter
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"








#overriding
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# define a subclass
class BigBox < Box

   # change existing getArea method as follows
   def getArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.getArea()





#freeze
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# let us freez this object
box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# now try using setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"







#Class constant
class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
#puts "Box weight is: #{Box::BOXWEIGHT}"
puts Box::BOXWEIGHT
=end






#thread
def func1
   i = 0
   while i<=2
      puts "func1 at: #{Time.now}"
      sleep(2)
      i = i+1
   end
end

def func2
   j = 0
   while j<=2
      puts "func2 at: #{Time.now}"
      sleep(1)
      j = j+1
   end
end
#puts "Started At #{Time.now}"
t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
t1.join
t2.join
puts "End at #{Time.now}" 
