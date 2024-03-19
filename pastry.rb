class Pastry
  attr_accessor  :option
  def initialize
   @option=option
   end

  def run
    pastry_option
     ending
  end

  def pastry_option
    pp "Pick your pastry!"
    pp "1. Cookie"
    pp "2. Donut"
    pp "3. Croissant"
    choice=gets.chomp.to_i
    case choice
    when 1
      self.option="cookie"
    when 2
      self.option="donut"
    when 3
      self.option="croissant" 
    else
      pp "Try again"
      pastry_option
    end
  end

  

  def ending
    pp "Enjoy your #{self.option}."
    pp "Come back again!"
  end
end
