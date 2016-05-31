require './product.rb'
require './checkout.rb'
require './basket.rb'
require './promotion_rule.rb'
require './promotions.rb'
require './test.rb'

def load_products
  @items = []
  @items << Product.new("001", "Travel Card Holder", 9.25)
  @items << Product.new("002", "Personalised cufflinks", 45.00)
  @items << Product.new("003", "Kids T-shirt", 19.95)
end

def load_promotions
  rules = []
  rules << PromotionRule.new(:same_item, product: @items[0], from_products: 2, new_price: 8.50)
  rules << PromotionRule.new(:over_total, minimum_total: 60, discount_percentage: 10)
  promotional_rules = Promotions.new(*rules)
end
