class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :toppings
      t.integer :size
      t.integer :price_in_cents

      t.timestamps
    end
  end
end
