
class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(title, price, quantity = 1)
        self.last_item = price * quantity
        self.total += price * quantity
        quantity.times {items.push(title)}
    end

    def apply_discount
        if self.discount > 0 
            self.total -= discount / 100.0 * self.total 
            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item
    end


end
