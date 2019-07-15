class Pizza < ApplicationRecord
  # validates :size, presence: true
  validates :size, inclusion: 6..30
  validates :price_in_cents, numericality: {greater_than: 99}


  def tooManyToppings?
    #Not a very good method but we'll look at the length of the toppings string
     (self.toppings.length > 30)
  end
end
