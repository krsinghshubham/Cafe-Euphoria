class Order < ApplicationRecord
  belongs_to :user

  def self.create(user_id_fromArgument)
      orderString = " "
      Menu.where(" quantity" > 0).select(
        [:name, :quantity]
      ).each { |record|
        orderString = orderString + record.name + " " + "quantity: " + record.quantity.to_s + "! "
      }
      order_total = Menu.menuTotal
      new_order = Order.new(
        menus_selected: orderString,
        order_total: Menu.menuTotal,
        user_id: user_id_fromArgument,
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
