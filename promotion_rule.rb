class PromotionRule
  def initialize type, rules = {}
    permitted_rules = [:same_item, :over_total]
    raise TypeException, 'Invalid rule type' unless permitted_rules.include? type
    @type = type
    @rules = rules
  end

  def order
    case @type
      when :same_item
        1 #First discount price for same items
      when :over_total
        2 #Then discount
    end
  end

  def apply basket = [], current_total = 0
    send @type, basket, current_total
  end

  private
  def same_item basket = [], current_total = 0 #Calculates amount of discount relevant
                                               # when there are more than X products of type
                                               # Y in the basket
    puts "Running same_item on item #{@rules[:product]}"
    rule_product = @rules[:product]
    instances_of_product = basket.select{|basket_product| rule_product.code == basket_product}
    if instances_of_product.length >= @rules[:from_products]
      discounted_products = instances_of_product - @rules[:from_products] + 1
      discounted_products * (rule_product.price - @rules[:new_price])
    else
      0
    end
  end

  def over_total basket = [], current_total = 0 #Calculares the amount of discount relevant
                                                #When the user has already spent more than
                                                #X on the checkout.
    #puts "Running over_total on current_total #{current_total} with min total #{@rules[:minimum_total]}"
    if current_total > @rules[:minimum_total]
      current_total * (@rules[:discount_percentage]*1.0/100)
    else
      0
    end
  end

end