class Order < ApplicationRecord
  belongs_to :user

  def self.completed
    all.where(completed: true)
  end

  def self.incomplete
    all.where(completed: false)
  end
end
