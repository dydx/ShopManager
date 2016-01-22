class AddCompletedToWorkOrders < ActiveRecord::Migration
  def change
    add_column :work_orders, :completed, :boolean, null: false, default: false
  end
end
