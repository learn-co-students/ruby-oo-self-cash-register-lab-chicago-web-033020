require 'pry'
class CashRegister
 
  attr_accessor :total, :title, :price, :discount, :items, :last_thing
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
    items << title
  end
  puts self.last_thing = price * quantity
end

  def apply_discount
    if self.discount != 0
    self.total = (total - (total * discount/100)).to_i
     "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
    
    def void_last_transaction
      self.total = self.total - self.last_thing
    end
end


