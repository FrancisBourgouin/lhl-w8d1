class CreateAlumnis < ActiveRecord::Migration[5.2]
  def change
    create_table :alumnis do |t|
      t.string :name

      t.timestamps
    end
  end
end
