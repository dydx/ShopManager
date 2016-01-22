class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :description, null: false
      t.integer :time, null: false, default: 5
      t.belongs_to :work_order, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
