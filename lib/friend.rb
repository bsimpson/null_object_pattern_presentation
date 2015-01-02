class Friend
  attr_accessor :name, :drink

  def initialize(name)
    self.name = name
  end

  def orders(drink)
    self.drink = drink
  end

  def toast
    "#{name} toasts with his #{drink.name}"
  end

  def pay
    "#{name} pays #{sprintf('$%.2f', drink.price)} and leaves a 20% tip of #{sprintf('$%.2f', drink.price * 0.20)} for his #{drink.name}"
  end
end
