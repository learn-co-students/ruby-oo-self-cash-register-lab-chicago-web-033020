class CashRegister
    attr_accessor :total, :discount, :items, :last

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total 
    @total
  end
  
  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {@items.push(item)}
    self.last = price * quantity
  end
  
  def apply_discount
    if discount > 0
      self.total *= 1 - (self.discount.to_f / 100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.last
  end

end