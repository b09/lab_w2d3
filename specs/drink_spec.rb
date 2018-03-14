require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')


class DrinkTest < MiniTest::Test

  def setup()
    @a_drink = Drink.new("Gin", 5)
  end

  def test_name_of_drink
    assert_equal("Gin", @a_drink.name)
  end

  def test_price_of_drink
    assert_equal(5, @a_drink.price)
  end

end
