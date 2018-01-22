class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

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

  def apply_discount(title, price)
    self.total = self.add_item - self.discount
  end

end
