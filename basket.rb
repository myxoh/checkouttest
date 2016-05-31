module Basket
  def self.subtotal basket
    subtotal = 0
    basket.each do |item|
      subtotal += item.price
    end
    subtotal
  end
end