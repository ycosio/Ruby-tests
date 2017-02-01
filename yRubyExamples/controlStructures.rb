#IF
today = Time.now

if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

puts "Do chores around the house" if today.wednesday?


#WHILE

puts ("-----------------------------------------")

num = 0

while num < 10
  puts(num)
  num += 1
end

num = 0
num += 1 while num < 10
