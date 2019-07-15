class RemoveColumnsInPizza < ActiveRecord::Migration[5.2]
  def change

    remove_columns :pizzas, :updated_at
  end
end
