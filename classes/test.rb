class Test
  def initialize promotional_rules, should_equal, *items
    @promotional_rules = promotional_rules
    @should_equal = should_equal
    @items = items
  end

  def run
    co = Checkout.new(@promotional_rules)
    @items.each do |item|
      co.scan item
    end
    total = co.total
    if total == @should_equal
      puts "Test was successfull"
    else
      puts "Test with items #{@items} \n
       returned #{total} instead of #{@should_equal}"
    end
    total == @should_equal
  end
end