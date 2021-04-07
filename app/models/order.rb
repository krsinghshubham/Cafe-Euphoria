class Order < ApplicationRecord
  belongs_to :user
def create < ApplicationController
    orderString = " "
    Menu.where(" quantity".to_i > 0).select(
      [:name, :quantity]
    ).each { |record|
      orderString = orderString + record.name + " " + "quantity: " + record.quantity + "!"
    }
    order_total = Menu.menuTotal
    new_order = Order.new(
      menus_selected: orderString,
      order_total: Menu.menuTotal,
      user_id: current_user.id,
    )
    new_order.save!
  end

  def self.completed
    all.where(completed: true)
  end

  def self.incomplete
    all.where(completed: false)
  end
end
