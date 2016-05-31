class Promotions
  def initialize *promotions
    @promotions = promotions.sort{|promotion, next_promotion| promotion.order <=> next_promotion.order}
  end

  def total basket
    total = 0
    total += Basket::subtotal basket
    @promotions.each do |promotion|
     total -= promotion.apply basket, total
    end
    total
  end
end