class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :category
      t.string :name
      t.string :price
      t.string :quantity
    end
  end
end

