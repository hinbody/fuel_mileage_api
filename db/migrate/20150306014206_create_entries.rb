class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.float :gallons
      t.float :price_per_gallon
      t.float :current_mileage
      t.string :vehicle_name

      t.timestamps null: false
    end
  end
end
