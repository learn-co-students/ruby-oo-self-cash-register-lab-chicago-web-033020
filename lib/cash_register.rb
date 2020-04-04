require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += (price*quantity)
    actual_items = [item] * quantity
    @items << actual_items
    self.last_transaction = price * quantity
  end
    

  def apply_discount
    if @discount > 0 
      # self.total -= (self.total.to_f*(self.discount.to_f*0.01))
      self.total *= 1 - (self.discount.to_f/100)
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction

    self.total -= self.last_transaction

  end


end

# binding.pry


# class Items
#   @@all =[]
#   def initialize
#     self.class.all << self
#   end

#   def self.all
#     @@all
#   end

#   def Items
#     items.all
#   end

# end