require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')


class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Andy", 20)
    drink1 = Drink.new("Gin", 5)
    drink2 = Drink.new("Beer", 6)
    drink3 = Drink.new("Wine", 7)
    drink4 = Drink.new("Whiskey", 8)
    @all_drinks = [drink1, drink2, drink3, drink4]
    @pub = Pub.new("The Pub", @all_drinks, 100)

  end

  def test_name_of_customer
    assert_equal("Andy", @customer1.name)
  end

  def test_amount_in_till
    assert_equal(20, @customer1.wallet)
  end

  def test_customer_buys_drink__true
    @customer1.customer_buys_drink("Gin", @pub)
    assert_equal(105, @pub.till)
    assert_equal(15, @customer1.wallet)
  end

  def test_customer_buys_drink__false
    actual = @customer1.customer_buys_drink("Coke", @pub)
    expected = "Andy does not have enough money for drink"
    assert_equal(expected, actual)
  end


end
