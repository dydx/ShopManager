class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.datetime :start_time, null: false
      t.belongs_to :vehicle, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
