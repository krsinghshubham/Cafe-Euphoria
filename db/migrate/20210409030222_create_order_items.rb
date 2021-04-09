class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :menu_name
      t.integer :menu_price
      t.integer :menu_quantity

      t.timestamps
    end
  end
end
