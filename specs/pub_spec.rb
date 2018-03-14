require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')


class PubTest < MiniTest::Test

  def setup()
    drink1 = Drink.new("Gin", 5)
    drink2 = Drink.new("Beer", 6)
    drink3 = Drink.new("Wine", 7)
    drink4 = Drink.new("Whiskey", 8)

    @all_drinks = [drink1, drink2, drink3, drink4 ]
    @pub = Pub.new("The Pub", @all_drinks, 100)

  end

  def test_name_of_pub
    assert_equal("The Pub", @pub.name)
  end

  def test_amount_in_till
    assert_equal(100, @pub.till)
  end

  def test_drinks_in_pub
    assert_equal(@all_drinks, @pub.beverages)
  end

  def test_check_price_of_drink__true
    result = @pub.check_price_of_drink("Gin")
    assert_equal(5, result)
  end

  def test_check_price_of_drink__false
    result = @pub.check_price_of_drink("Bourbon")
    no_drink = "No drink with that name"
    assert_equal(no_drink, result)
  end

  def test_drink_sold__true
    result = @pub.drink_sold("Gin")
    assert_equal(3, @pub.beverages.length)
  end

  def test_drink_sold__false
    result = @pub.drink_sold("Coke")
    assert_equal(4, @pub.beverages.length)
  end


end
