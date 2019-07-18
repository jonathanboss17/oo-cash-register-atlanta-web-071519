class CashRegister
  attr_accessor :total 
  
  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
  end
  
end
