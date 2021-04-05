class Menu < ApplicationRecord
  def self.is_starter
    all.where(category: "Starter")
  end

  def self.is_mainCourse
    all.where(category: "Main-course")
  end

  def self.is_beverage
    all.where(category: "Beverages")
  end
end
