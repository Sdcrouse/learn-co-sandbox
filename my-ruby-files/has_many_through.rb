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
 
  def meals
    Meal.all.select {|meal| meal.customer == self}
  end
 
  def waiters
    meals.map {|meal| meal.waiter}
  end
 
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
 
  def new_meal_20_percent(waiter, total)
    tip = total * 0.2
    Meal.new(waiter, self, total, tip)
  end
 
  def self.oldest_customer
    oldest_age = 0
    oldest_customer = nil
    self.all.each do |customer|
      if customer.age > oldest_age
        oldest_age = customer.age
        oldest_customer = customer
      end
    end
    oldest_customer
  end
 
end

class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def meals
    Meals.all.select {|meal| meal.waiter == self}
  end 
  
  def customers
    meals.map {|meal| meal.customer}
  end 
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end 
  
  def new_meal_20_percent(customer, total)
    tip = total * 0.2 
    Meal.new(self, customer, total, tip)
  end
  
  def self.most_experienced_waiter
    most_yrs_experience = 0 
    most_experienced_waiter = nil 
    self.all.each do |waiter|
      if waiter.yrs_experience > most_yrs_experience
        most_yrs_experience = waiter.yrs_experience
        most_experienced_waiter = waiter 
      end 
    end 
    most_experienced_waiter 
  end
  
  def self.least_experienced_waiter 
    least_yrs_experience = 200 
    least_experienced_waiter = nil 
    self.all.each do |waiter| 
      if waiter.yrs_experience < least_yrs_experience
        least_yrs_experience = waiter.yrs_experience
        least_experienced_waiter = waiter 
      end 
    end 
    least_experienced_waiter 
  end
  
  def self.average_yrs_experience 
    average = 0 
    self.all.each do |waiter|
      average += waiter.yrs_experience
    end
    average / self.all.size
  end 
  
  def customer_names 
    customers.map {|customer| customer.name}
  end
  
  def highest_tipping_customer 
    highest_tip = 0 
    best_customer = nil 
    meals.each do |meal|
      if meal.tip > highest_tip 
        highest_tip = meal.tip 
        best_customer = meal.customer 
      end 
    end 
    best_customer # Or, best_customer.name
  end
  
  def average_tip
    average = 0 
    meals.each {|meal| average += meal.tip}
    average / meals.size 
  end 
  
  def self.most_experienced_waiters_average_tip 
    self.most_experienced_waiter.average_tip 
  end
  
  def self.least_experienced_waiters_average_tip 
    self.least_experienced_waiter.average_tip 
  end
      
end

class Meal
 
  attr_accessor :waiter, :customer, :total, :tip
 
  @@all = []
 
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
 
  def self.all
    @@all
  end
end