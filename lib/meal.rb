require "pry"


class Meal
  
  attr_accessor :waiter, :customer, :total, :tip
  
  @@all = []
  
  def initialize(waiter, customer, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
    
  def self.all
    @@all
  end
  
  #binding.pry
  def meals
    return @@all.meals
  end
  
end

# #meals
#       returns an Array of Meal instances associated with this customer (FAILED - 2)