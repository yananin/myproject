# tests/testing.rb

require 'minitest/autorun'
require './app'
require './icecream'
require './pancake'
require './pastry'

class TestingApp < Minitest::Test
  
  def test_ice_cream_ending_empty
    dessert = Ice_Cream.new
    assert_output(/Enjoy your  ice cream with ./) { dessert.ending }
  end
  def test_ice_cream
    dessert = Ice_Cream.new
    $stdin = StringIO.new("1")
    assert_output("\"Pick a flavor of ice cream!\"\n\"1. Vanilla\"\n\"2. Chocolate\"\n\"3. Strawberry\"\n\"4. Oreo\"\n") { dessert.flavor }
    $stdin = StringIO.new("2")
    assert_output("\"Pick your topings\"\n\"1. Chopped almonds\"\n\"2. Cheries\"\n\"3. Oreo pieces\"\n\"4. Mini M&M's\"\n"){dessert.add_dry_topping}
    assert_output("\"Enjoy your vanilla ice cream with cheries.\"\n\"Come back again!\"\n") { dessert.ending }
  end

  def test_pastry_ending_empty
    dessert = Pastry.new
    assert_output(/Enjoy your ./) { dessert.ending }
  end
  def test_pastry
    dessert = Pastry.new
    $stdin = StringIO.new("1")
    assert_output("\"Pick your pastry!\"\n\"1. Cookie\"\n\"2. Donut\"\n\"3. Croissant\"\n") { dessert.pastry_option }
    assert_output(/Enjoy your cookie./) { dessert.ending }
  end

  def test_pancake_ending_empty
    dessert = Pancake.new
    assert_output(/Enjoy your pancakes with  and ./) { dessert.ending }
  end
  def test_pancake_
    dessert = Pancake.new
    $stdin = StringIO.new("1")
    assert_output( "\"Pick your topings\"\n\"1. Diced banana\"\n\"2. Diced strawberries\"\n\"3. Blueberries\"\n"){dessert.add_dry_topping}
    $stdin = StringIO.new("2")
    assert_output("\"Pick sauce for your pankcakes!\"\n\"1. Blueberry sauce\"\n\"2. Chocolate sauce\"\n\"3. Strawberry sauce\"\n\"4. Maple syrup\"\n"){dessert.add_wet_topping}
    assert_output(/Enjoy your pancakes with diced banana and chocolate sauce./) { dessert.ending }
  end
  
end
