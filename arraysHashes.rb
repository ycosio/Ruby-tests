#Arrays
a = [1, 'cat', 3.14]
puts a.inspect

puts "The first element #{a[0]}"

a[2] = nil

puts a.inspect

a = [1,2,3,4,5]

#When the index is two numbers the first is the start potiton to start to replace
#and the second the length starting in that potition
a[2,2] = 'cat' # => [1,2,"cat",5]
a[2,1] = 'dog' # => [1,2,"dog",5]
a[5..6] = 8, 9 # => [1,2,"dog",5,nil,8,9]

#If the length is 0, the element is insert on that potition
a[2,0] = 4 # => [1,2,4,"dog",5,nil,8,9]


elements = []

elements.push 1 #Insert a new element at the end
elements.pop    #Delete the last element
elemetns.shift   #Delete the first element

elements.first(4) #Returns the first 4 elements
elements.last(4)  #Returns the last 4 elements

puts('------------------------------');

#Hashes
b = %w{1 cat 3.14}

puts b.inspect

b = {
  'algo' => 1,
  'Esto' => 'aquello',
  1      => 'carro'
}

puts b.inspect

puts b[1]

puts b["Esto"]

histogram = Hash.new(0) # The default value is zero
