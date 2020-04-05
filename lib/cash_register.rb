require 'pry'

class CashRegister
  attr_reader :items
  attr_accessor :discount, :total

  def initialize(discount=0, total=0) 
    @discount = discount
    @total = total
    @items = []
  end 

  def add_item(title, price, quantity=1)
    @quantity = quantity
    @price = price
    i = 0
    while i < quantity do 
      @items << title
      @total += price
      i += 1
    end 
  end 

  def void_last_transaction
    i = 0
    while i < @quantity do 
      @total -= @price
      i += 1
    end 
  
    # binding.pry
  end 

  def apply_discount
    if @discount != 0
      bef_disc = @total * @discount
      reduce_by = bef_disc / 100
      @total -= reduce_by
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 

end 
