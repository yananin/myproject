class Ice_Cream
  attr_accessor :ice_cream_flavor, :dry_topping
  def initialize
   @ice_cream_flavor=ice_cream_flavor
   @dry_topping=dry_topping
  end

  def run
    flavor
    add_dry_topping
    ending
  end

  def flavor
    pp "Pick a flavor of ice cream!"
    pp "1. Vanilla"
    pp "2. Chocolate"
    pp "3. Strawberry"
    pp "4. Oreo"
    choice=gets.chomp.to_i
    case choice
    when 1
      self.ice_cream_flavor="vanilla"
    when 2
      self.ice_cream_flavor="chocolate"
    when 3
      self.ice_cream_flavor="strawberry"
    when 4 
      self.ice_cream_flavor="oreo"
    else
      pp "Try again"
      flavor
    end
  end

  def add_dry_topping
      pp "Pick your topings"
      pp "1. Chopped almonds"
      pp "2. Cheries"
      pp "3. Oreo pieces"
      pp "4. Mini M&M's"
      choice=gets.chomp.to_i
    case choice
    when 1
      self.dry_topping="chopped almonds"
    when 2
      self.dry_topping="cheries"
    when 3
      self.dry_topping="oreo pieces"
    when 4
      self.dry_topping="mini M&M'"
    else
      pp "Try again"
      add_dry_topping
    end
  end

  def ending
    pp"Enjoy your #{self.ice_cream_flavor} ice cream with #{self.dry_topping}."
    pp "Come back again!"
  end
end
