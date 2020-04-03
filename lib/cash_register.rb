class CashRegister
  attr_accessor :total, :discount, :all, :last

    def initialize(discount=0)
      @total = 0
      @discount = discount
      @all = []
    end

      def add_item(title, price, quantity=1)
        sum = price * quantity
        @total += sum

        quantity.times do
          @all << title
          @last = sum
        end
      end

      def items
        @all
      end

      def apply_discount
          if discount > 0
            @total *= 1 - (@discount / 100.00)
            return "After the discount, the total comes to $#{@total.to_i}."
          elsif @discount == 0
            return "There is no discount to apply."
          end
      end

      def void_last_transaction
        @total -= @last
      end
end
