class Pub
  attr_accessor :name, :beverages, :till

  def initialize(pub_name, pub_drinks = [], pub_till = 0)
    @name = pub_name
    @beverages = pub_drinks
    @till = pub_till
  end

  def check_price_of_drink(name_of_drink)
    for drink in @beverages
      if drink.name == name_of_drink
        return drink.price
      # else
        # return "No drink with that name"
      end
    end
  end

  def check_drink_in_beverages(name_of_drink)
    # return @beverages.include?(name_of_drink)

    for drink in @beverages
      if drink.name == name_of_drink
        return true
      else
        return false
      end
    # end
    end
  end

  def drink_sold(name_of_drink)
    for drink in @beverages
      if check_drink_in_beverages(name_of_drink)
        @beverages.delete(drink)
      else
        return "No drink with that name"
      # return @beverages
    # else
      # return "No drink with that name"
      end
    end
  end

end
