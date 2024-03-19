class Pancake
  attr_accessor  :dry_topping, :wet_topping
  def initialize
   @wet_topping=wet_topping
   @dry_topping=dry_topping
  end

  def run
    add_dry_topping
    add_wet_topping
    ending
  end

  def add_wet_topping
    pp "Pick sauce for your pankcakes!"
    pp "1. Blueberry sauce"
    pp "2. Chocolate sauce"
    pp "3. Strawberry sauce"
    pp "4. Maple syrup"
    choice=gets.chomp.to_i
    case choice
    when 1
      self.wet_topping="blueberry sauce"
    when 2
      self.wet_topping="chocolate sauce"
    when 3
      self.wet_topping="strawberry sauce"
    when 4 
      self.wet_topping="maple syrup"
    else
      pp "Try again"
      add_wet_topping
    end
  end

  def add_dry_topping
      pp "Pick your topings"
      pp "1. Diced banana"
      pp "2. Diced strawberries"
      pp "3. Blueberries"
      choice=gets.chomp.to_i
    case choice
    when 1
      self.dry_topping="diced banana"
    when 2
      self.dry_topping="diced strawberries"
    when 3
      self.dry_topping="blueberries"

    else
      pp "Try again"
      add_dry_topping
    end
  end

  def ending
    pp "Enjoy your pancakes with #{self.dry_topping} and #{self.wet_topping}."
    pp"Come back again!"
  end
end
