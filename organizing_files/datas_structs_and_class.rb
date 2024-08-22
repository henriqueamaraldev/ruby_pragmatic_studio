class Snack 
  
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

Snack.new("popcorn", 1)
Snack.new("candy", 2)
Snack.new("nachos", 3)
Snack.new("pretzels", 4)

SnackStruct = Struct.new(:name, :price)
SnackStruct.new("popcorn", 1)
SnackStruct.new("candy", 2)
SnackStruct.new("nachos", 3)
SnackStruct.new("pretzels", 4)


SnackData = Data.define(:name, :price)
SnackData.new("popcorn", 1)
SnackData.new("candy", 2)
SnackData.new("nachos", 3)
SnackData.new("pretzels", 4)

