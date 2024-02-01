class Food
  attr_accessor :name, :category, :quantity

  def initialize(name, category, quantity)
    @name = name
    @category = category
    @quantity = quantity
  end

  def to_s
    "#{@name} (Category: #{@category}, Quantity: #{@quantity})"
  end
end
