require "pry"

class Customer
  
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
   Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  def waiters
    my_waiters = []
    Meal.all.select do |meal|
      if meal.customer == self
      my_waiter = meal.waiter
      my_waiters << my_waiter
      
    end
    my_waiters
  end
end
end

expected: @experience=1>,#<Waiter:0x0000000002f181a8 @name="Joe", @experience=10>, #<Waiter:0x0000000002f18108 @name="Andrew", @experience=3>]
     got: @experience=1>,#<Waiter:0x0000000002f181a8 @name="Joe...f181f8 @name="Terrance", @experience=1>, #<Waiter:0x0000000002f18158 @name="Esmery", @experience=2>]
