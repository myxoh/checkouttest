require './initializer.rb'
load_products   # List products in initializer # load_products
promotional_rules = load_promotions # Set promotions in initializer #load_promotions
co = Checkout.new(promotional_rules)
co.scan @items[0]
co.scan @items[0]
co.scan @items[1]
puts co.total

