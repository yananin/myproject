require_relative "icecream"
require_relative "pancake"
require_relative "pastry"

class App
def app
  pp "Pick ur dessert!"
  pp "1. Ice cream"
  pp "2. Pancakes"
  pp "3. Pastries"
  choice=gets.chomp.to_i
  case choice
  when 1
    dessert= Ice_Cream.new
    dessert.run
  when 2
    dessert= Pancake.new
    dessert.run
  when 3
    dessert= Pastry.new
    dessert.run
  else
    pp "Try again"
    app
  end
  
end
end

app=App.new
app.app
