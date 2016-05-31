class Checkout

  def initialize promotion_rules = nil, *basket
    @promotion_rules = promotion_rules
    @basket = basket
  end

  def scan item
    @basket << item unless item.nil?
  end

  def total
    total = (@promotion_rules.total @basket).round(2)
  end
end