class BookInStock
  #Method to just read
  attr_reader :isbn

  #Method to read and write
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end
