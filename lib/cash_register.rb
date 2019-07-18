class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if(discount != nil)
      @total = @total - ((@discount.to_f / 100) * (@total))
      "After the discount, the total comes to $#{@total.round}."
    else 
      "There is no discount to apply."
    end
  end
  
end
