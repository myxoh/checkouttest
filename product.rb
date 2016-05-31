class Product
  #Has a code (String), a name (String), and a price (Float)

  attr_accessor  :code, :name, :price
  def initialize code, name, price
    @code = code
    @name = name
    @price = price
  end
end