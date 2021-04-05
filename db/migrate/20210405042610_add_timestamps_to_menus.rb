class AddTimestampsToMenus < ActiveRecord::Migration[6.1]
  def change_table
    add_column :menus, :created_at, :datetime, null: false
    add_column :menus, :updated_at, :datetime, null: false
  end
end
