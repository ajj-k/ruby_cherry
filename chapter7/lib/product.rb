class Product 
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

class User
  attr_reader :name
  protected attr_reader :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

puts(alice.heavier_than?(bob))
puts(bob.heavier_than?(alice))