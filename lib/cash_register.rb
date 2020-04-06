require 'pry'
class CashRegister
  attr_accessor :discount, :total, :item, :items
  attr_reader :price, :quantity

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
     @price = price
     @quantity = quantity
    @total += @price * @quantity
     quantity.times {@items << item}
    end

  def apply_discount
    if @discount
       @total = @total * (1.00 - @discount.to_f / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total -= self.price * self.quantity
  end
end
