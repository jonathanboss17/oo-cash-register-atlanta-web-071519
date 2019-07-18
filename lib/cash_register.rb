class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item_names = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @item_names << title
  end
  
  def apply_discount
    if(discount != nil)
      @total = @total - ((@discount.to_f / 100) * (@total))
      "After the discount, the total comes to $#{@total.round}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def items 
    @item_names 
  end
    
end
