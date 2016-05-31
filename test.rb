class Test
  def initialize promotional_rules, should_equal, *items
    @promotional_rules = promotional_rules
    @should_equal = should_equal
    @items = items
  end

  def run
    co = Checkout.new @promotional_rules
    @items.each do |item|
      co.scan item
    end

    if co.total == @should_equal
      puts "Test was successfull"
    else
      puts "Test with items #{@items} returned #{co.total} instead of #{@should_equal}"
    end
    co.total == @should_equal
  end
end