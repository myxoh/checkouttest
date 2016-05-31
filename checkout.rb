class Checkout
  #Provides a container for a Basket, has a set of promotional_rules
  #Returns the total once the promotions are calculated using a method "total" on promotional_rules

  def initialize promotional_rules = nil, *basket
    @promotion_rules = promotional_rules
    @basket = basket
  end

  def scan item
    @basket << item unless item.nil?
  end

  def total
    total = (@promotion_rules.total @basket).round(2)
  end
end