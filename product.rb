class Product

  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate + 1
  end

  def product_total
    @total = base_price * (tax_rate + 1)
  end

  def product_name
    @name
  end

  def product_name=(new_name)
    @name = new_name
  end

  def product_base_price
    @base_price
  end

  def product_base_price=(new_price)
    @base_price = new_price
  end

  def product_tax_rate
    @tax_rate
  end

  def product_tax_rate=(new_tax_rate)
    @tax_rate = new_tax_rate
  end

end
