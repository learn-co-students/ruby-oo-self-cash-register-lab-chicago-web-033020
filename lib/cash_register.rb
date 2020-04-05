require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :quantity, :price



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    self.total += (quantity * price)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if self.discount != 0 
      discount_msg = self.total = (self.total - (self.total * (discount.to_f * 0.01)).to_i)
      "After the discount, the total comes to $#{discount_msg}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @quantity.times do
      @total -= @price
    end
  end 


end
