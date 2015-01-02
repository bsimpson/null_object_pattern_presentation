load './lib/friend.rb'
load './lib/drinks/drink.rb'
load './lib/drinks/bells_two_hearted_ale.rb'
load './lib/drinks/sweetwater_420.rb'
load './lib/drinks/gin_and_tonic.rb'

# 4 friends celebrate the New Year at a bar
eric = Friend.new('Eric')
jeff = Friend.new('Jeff')
dberk = Friend.new('Daniel')
ben = Friend.new('Ben')

# They look over drinks
# bells_two_hearted_ale
# sweetwater_420
# gin_and_tonic

# They order
eric.orders(BellsTwoHeartedAle.new)
jeff.orders(Sweetwater420.new)
dberk.orders(GinAndTonic.new)

# Ben doesn't want a drink, so doesn't order

# They get their drinks and cheer in the New Year!
[eric, jeff, dberk, ben].map(&:toast)

# Oops! Ben doesn't have anything to toast with so he gets a null pointer exception
# Lets try and fix this so toast doesn't blow up...

# Now that they toasted, they try and pay
# Oops! Again, Ben doesn't have a drink, so he can't calculate the price
# We could fix this the same way, but we are seeing a pattern emerge...

# Lets instead order Ben a tall glass of null object
# ben.orders(NullDrink.new)
[eric, jeff, dberk, ben].map(&:toast)

# Now we can calculate what we owe
[eric, jeff, dberk, ben].map(&:pay)
