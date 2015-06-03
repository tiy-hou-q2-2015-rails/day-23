class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :waffle_type
      t.text :special_instructions
      t.integer :quantity
      t.string :customer_name

      t.timestamps null: false
    end
  end
end
