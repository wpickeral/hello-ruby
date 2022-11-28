class Car
  def initialize(name, model, year)
    @make = name
    @model = model
    @year = year
  end

  def honk_horn
    puts "Honk Honk!"
  end
end

# All cars honk, but not all cars go super fast!
# Lets make a new class called RaceCar and inherit Car

class RaceCar < Car
  def honk_horn
    super
    puts "I'm driving a Corvette!"
  end
end

my_car = RaceCar.new('Chevy', 'Corvette', 2022)

puts my_car.honk_horn # Honk Honk! I'm driving a Corvette!
