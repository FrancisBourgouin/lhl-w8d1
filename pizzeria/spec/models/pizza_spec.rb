require 'rails_helper'

RSpec.describe Pizza, type: :model do
#Size is present (between 6-30)
it "should create an error if the size isn't there" do
    testPizza = Pizza.create(
      name:"Luigi's pizza",
      toppings:"Salad, cucumber, green peppers, kale, brocoli, pickles & one big fat avocado",
      size:nil,
      price_in_cents:999
    )
    expect(testPizza).to_not be_valid
end

it "should create an error if the size is over 30 or under 6 inches" do
    testPizza = Pizza.create(
      name:"Luigi's pizza",
      toppings:"Salad, cucumber, green peppers, kale, brocoli, pickles & one big fat avocado",
      size:40,
      price_in_cents:999
    )
    expect(testPizza).to_not be_valid
end

it "should create an error if the price is under 99 cents" do
    testPizza = Pizza.create(
      name:"Luigi's pizza",
      toppings:"Salad, cucumber, green peppers, kale, brocoli, pickles & one big fat avocado",
      size:40,
      price_in_cents:9
    )
    expect(testPizza).to_not be_valid
end

it "has too many toppings if length of string is too big (i know not the best)" do
  testPizza = Pizza.create(
      name:"Luigi's pizza",
      toppings:"Salad, cucumber, green peppers, kale, brocoli, pickles & one big fat avocado",
      size:40,
      price_in_cents:9
  )

  expect(testPizza.tooManyToppings?).to be true
end

#Toppings needs to be there
#Pizza should have a name
#Should have a price (100 - 9999)
end
