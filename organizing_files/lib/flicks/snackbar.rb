module Snackbar
  Snack = Data.define(:name, :price)

  SNACKS = [    
    Snack.new("popcorn", 1),
    Snack.new("candy", 2),
    Snack.new("nachos", 3),
    Snack.new("pretzels", 4)
  ]

  def self.random_snack
    SNACKS.sample
  end
end