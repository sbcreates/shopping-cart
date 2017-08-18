require_relative('product.rb')
require 'pry'

class Cart

  @@items_customers_purchased = []

  def initialize
    @in_cart = []
    @total_in_cart = 0
  end

  def in_cart
    @in_cart
  end

  def total_in_cart
    @total_in_cart
  end

  def add_product(name, base_price, tax_rate)
    @total_in_cart += 1
    new_product = Product.new(name, base_price, tax_rate)
    @in_cart << new_product
    return new_product
  end

  def remove_product(item)
    @total_in_cart -= 1
    @in_cart.delete(item)
  end

  def total_before_tax
    @total_before_tax = 0
    @in_cart.each do |price|
      @total_before_tax += price.product_base_price
    end
    @total_before_tax
  end

  def total_after_tax
    @total_after_tax = 0
    @in_cart.each do |price|
      @total_after_tax += price.product_base_price * price.product_tax_rate
    end
    @total_after_tax
  end

end

cart1 = Cart.new
hair_spray = cart1.add_product("hair spray", 5, 0.013)
p cart1.inspect
shampoo = cart1.add_product("shampoo", 10, 0.013)
conditioner = cart1.add_product("conditioner", 8, 0.013)
mousse = cart1.add_product("mousse", 4, 0.013)
p cart1.total_in_cart
p cart1.total_before_tax
p cart1.total_after_tax
p cart1.inspect
cart1.remove_product(mousse)
p cart1.inspect
p cart1.total_in_cart
