class Customer
  attr_accessor :name, :wallet

  def initialize(customer_name, customer_wallet = 0)
    @name = customer_name
    @wallet = customer_wallet
  end

  def customer_buys_drink(drink_name, pub_object)
    if (pub_object.check_drink_in_beverages(drink_name)) && (pub_object.check_price_of_drink(drink_name) <= @wallet)
      pub_object.drink_sold(drink_name)
      @wallet -= pub_object.check_price_of_drink(drink_name)
    else
      return "#{@name} does not have enough money for drink"
    end

  end

end
