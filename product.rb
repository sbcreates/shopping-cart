class Product

  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

  def total
    @total = base_price * (tax_rate + 1)
  end

end
