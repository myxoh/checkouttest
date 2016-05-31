class Promotions
  def initialize *promotions
    @promotions = promotions.sort{|promotion| promotion.order}
  end

  def total basket
    total = 0
    total += Basket::subtotal basket
    @promotions.each do |promotion|
      total -= promotion.apply basket
    end
    total
  end
end