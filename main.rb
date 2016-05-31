require './initializer.rb'
load_products   # List products in initializer # load_products
promotional_rules = load_promotions # Set promotions in initializer #load_promotions

Test.new(promotional_rules, 66.78, @items[0], @items[1], @items[2]).run
Test.new(promotional_rules, 36.95, @items[0], @items[2], @items[0]).run
Test.new(promotional_rules, 73.76, @items[0], @items[1], @items[0], @items[2]).run