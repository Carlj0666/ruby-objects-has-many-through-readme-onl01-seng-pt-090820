require "pry"


class Waiter

  attr_accessor :name, :experience

  @@all = []

  def initialize(name, experience)
    @name = name
    @experience = experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
   Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
end


# #waiters
#       returns an Array of Waiter instances associated with this customer's meals