
class CashRegister

attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = total + price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if discount > 0
      self.total = total - discount.to_f * 100.0
      "After the discount, the total comes to $#{self.total}."
    else "There is no discount to apply."
    end
  end

end
