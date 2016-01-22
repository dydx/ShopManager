class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vin, null: false
      t.string :mileage, null: false
      t.string :year
      t.string :make
      t.string :model
      t.belongs_to :customer, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
