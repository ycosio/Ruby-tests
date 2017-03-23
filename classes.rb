class BookInStock
  #Method to just read
  attr_reader :isbn

  #Method to read and write
  attr_accessor :price


  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  #Rewrite the method "to_s" called by puts to write it correctly
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  #Get function
  def price_in_cents
    Integer(@price * 100 + 0.5)
  end

  #Set function "="
  def price_in_cents=(cents)
    @price = cents / 100.0
  end

end

b1 = BookInStock.new("Isbn1", 3)
b2 = BookInStock.new("Isbn2", 3.14)
b3 = BookInStock.new("Isbn3", "3.14")

p b1
puts "\n"
puts b2
puts "\n\n"

puts "ISBN      = #{b3.isbn}"
puts "Price     = #{b3.price}"
b3.price = b3.price * 0.75
puts "New price = #{b3.price}"

puts "\n\n"
puts "ISBN           = #{b1.isbn}"
puts "Price          = #{b1.price}"
puts "Price in cents = #{b1.price_in_cents}"
b1.price_in_cents = 1234
puts "New price      = #{b1.price}"
puts "Price in cents = #{b1.price_in_cents}"

