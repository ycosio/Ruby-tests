#Block
# {puts "Hello"}

#Block and callback

def call_block
  puts "Start"
  yield
  yield
  puts "End"
end

call_block {puts "something"}


def call_block2
  puts "Start"
  yield("Dave", "Hello")
  yield("Andy", "Goodbay")
  puts "End"
end

call_block2 {|person, phrase| puts "#{person} says #{phrase}"}

#Iterations

animals = %w(ant bee cat dog)
animals.each {|animal|
  animal = animal + "i"
  puts animal
}

%w(car airplane train).each {|veichle| print veichle, " "}
5.times {print "*"}
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}
puts


def call_block
  puts "Start"
  yield
  yield
  puts "End"
end

call_block {puts "something"}

printf("Number: %5.2f \nString: %s\n", 1.23, "Op")

#Inject allows to you accumulate a value across the elements of a collection
[1,3,5,7].inject(0) {|sum, value| sum+value} #Inject was initialized in 0
                                             #Also always is the first variable of the block
                                             #and it work like sum = sum+value

[1,3,5,7].inject(:*) # works like product = product*value and the same for : # works like product = product*value and the same for :+

#Loop is able to finish cleanly when runs out of values inside a loop
num = [1,2,3].to_enum
letters = ('a..z').to_enum

loop do
  puts "#{num.next} - #{letters.next}" # => 1 - a , 2 - b , 3 - c
end
